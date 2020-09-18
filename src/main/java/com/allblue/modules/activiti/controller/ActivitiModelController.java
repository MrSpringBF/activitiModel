package com.allblue.modules.activiti.controller;


import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import com.allblue.modules.activiti.entity.MyProcessDefinition;
import com.allblue.modules.activiti.entity.ReModelEntity;
import com.allblue.modules.activiti.service.ReModelService;
import com.allblue.utils.R;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.activiti.bpmn.converter.BpmnXMLConverter;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.constants.ModelDataJsonConstants;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.repository.Model;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/activiti")
public class ActivitiModelController {

    protected static final Logger log = LoggerFactory.getLogger(ActivitiModelController.class);

    @Autowired
    ProcessEngine processEngine;
    @Autowired
    ObjectMapper objectMapper;
    @Autowired
    private ReModelService reModelService;
    @Autowired
    private  RepositoryService repositoryService;
    /**
     * 新建一个空模型
     */
    @RequestMapping("/create")
    public R newModel(HttpServletResponse response, String name) throws IOException {
        RepositoryService repositoryService = processEngine.getRepositoryService();
        //初始化一个空模型
        Model model = repositoryService.newModel();

        //设置一些默认信息
        name = "new-process";
        String description = "";
        int revision = 1;
        String key = "process";

        ObjectNode modelNode = objectMapper.createObjectNode();
        modelNode.put(ModelDataJsonConstants.MODEL_NAME, name);
        modelNode.put(ModelDataJsonConstants.MODEL_DESCRIPTION, description);
        modelNode.put(ModelDataJsonConstants.MODEL_REVISION, revision);

        model.setName(name);
        model.setKey(key);
        model.setMetaInfo(modelNode.toString());

        repositoryService.saveModel(model);
        String id = model.getId();

        //完善ModelEditorSource
        ObjectNode editorNode = objectMapper.createObjectNode();
        editorNode.put("id", "canvas");
        editorNode.put("resourceId", "canvas");
        ObjectNode stencilSetNode = objectMapper.createObjectNode();
        stencilSetNode.put("namespace",
                "http://b3mn.org/stencilset/bpmn2.0#");
        editorNode.put("stencilset", stencilSetNode);
        repositoryService.addModelEditorSource(id, editorNode.toString().getBytes("utf-8"));
        response.sendRedirect("/statics/act/modeler.html?modelId=" + id);
        return R.ok();
    }

    /**
     * 获取所有模型
     */
    @RequestMapping("/modelList")
    @ResponseBody
    public Object modelList() {
        RepositoryService repositoryService = processEngine.getRepositoryService();
        return repositoryService.createModelQuery().list();
    }

    /**
     * 发布模型为流程定义
     */
    @RequestMapping("/deploy")
    @ResponseBody
    public R deploy(String modelId) throws Exception {

        //获取模型
        RepositoryService repositoryService = processEngine.getRepositoryService();
        Model modelData = repositoryService.getModel(modelId);
        byte[] bytes = repositoryService.getModelEditorSource(modelData.getId());

        if (bytes == null) {
            return R.error( "模型数据为空，请先设计流程并成功保存，再进行发布。");
        }
        String str = new String(bytes);

        System.out.println(new String(bytes));
        JsonNode modelNode = new ObjectMapper().readTree(bytes);

        BpmnModel model = new BpmnJsonConverter().convertToBpmnModel(modelNode);
        if (model.getProcesses().size() == 0) {
            return R.error("数据模型不符要求，请至少设计一条主线流程。");
        }
        byte[] bpmnBytes = new BpmnXMLConverter().convertToXML(model);
        //发布流程
        String processName = modelData.getName() + ".bpmn20.xml";
        Deployment deployment = repositoryService.createDeployment()
                .name(modelData.getName())
                .addString(processName, new String(bpmnBytes, "UTF-8"))
                .deploy();
        modelData.setDeploymentId(deployment.getId());
        repositoryService.saveModel(modelData);
        return R.ok();
    }

    /**
     * 启动流程
     */
    @RequestMapping("/start")
    @ResponseBody
    public Object startProcess(String keyName) {
        ProcessInstance process = processEngine.getRuntimeService().startProcessInstanceByKey(keyName);

        return process.getId() + " : " + process.getProcessDefinitionId();
    }

    /**
     * 提交任务
     */
    @RequestMapping("/run")
    @ResponseBody
    public Object run(String processInstanceId) {
        Task task = processEngine.getTaskService().createTaskQuery().processInstanceId(processInstanceId).singleResult();

        log.info("task {} find ", task.getId());
        processEngine.getTaskService().complete(task.getId());
        return "SUCCESS";
    }

    @RequestMapping("/queryZhangSanTask")
    @ResponseBody
    public void queryZhangSanTask() {
        String assignee = "chang";
        List<Task> taskList = processEngine.getTaskService()//获取任务service
                .createTaskQuery()//创建查询对象
                .taskAssignee(assignee)//指定查询人
                .list();
        for (Task task : taskList) {
//            task.setDueDate();
            System.out.println("代办任务ID:" + task.getId());
            System.out.println("代办任务name:" + task.getName());
            System.out.println("代办任务创建时间:" + task.getCreateTime());
            System.out.println("代办任务办理人:" + task.getAssignee());
            System.out.println("流程实例ID:" + task.getProcessInstanceId());
            System.out.println("执行对象ID:" + task.getExecutionId());

            //提交任务到下一个代理人,如果存在这一句，上面不会输出打印，即便assignee是当前的执行人也不会打印，但是数据库中数据已经改变
            //如果assignee不是当前执行人，即便没有下面这一句，也查询不到数据，因为当前不是这个人
            //当全部流程执行结束，
            processEngine.getTaskService().complete(task.getId());
        }
    }
    @RequestMapping("/delete")
    @ResponseBody
    public R deleteProcessDefinition(String modelId) {

        ReModelEntity reModelEntity = reModelService.selectByID(modelId);
        if(StringUtils.isNotBlank(reModelEntity.getDeploymentId())){
            processEngine.getRepositoryService()//与流程定义和部署对象相关的Service
                    .deleteDeployment(reModelEntity.getDeploymentId(), true);
        }
        reModelService.deleteByID(modelId);
        return R.ok();
    }
    /*根据流程文件部署流程*/
    @RequestMapping("/deployByFile")
    @ResponseBody
    public void deployByFile(@RequestParam("file") MultipartFile file) throws IOException {
        InputStream inputStream = file.getInputStream();
        System.err.println();
        DeploymentBuilder deploymentBuilder = repositoryService.createDeployment();
        //获取文件名字
        String originalFilename = file.getOriginalFilename();
        String substring = null;
        try {
            substring = originalFilename.substring(0, originalFilename.indexOf("."));
        } catch (Exception e) {
            throw new RuntimeException("文件名字不正确");
        }

        deploymentBuilder.name(substring).addInputStream(file.getOriginalFilename(),inputStream);
        Deployment deploy = deploymentBuilder.deploy();
        log.info("deploy={}",deploy);
    }
    /*查询已经部署的流程列表*/
    @RequestMapping("/defList")
    @ResponseBody
    public Object defList(Integer page) throws InvocationTargetException, IllegalAccessException {
        List<ProcessDefinition> processDefinitionList = processEngine.getRepositoryService().createProcessDefinitionQuery().listPage(page, 10);
        List<MyProcessDefinition> processList=new ArrayList<>();
        for (ProcessDefinition processDefinition : processDefinitionList) {
            MyProcessDefinition myProcessDefinition1 =new MyProcessDefinition();
            BeanUtil.copyProperties(processDefinition,myProcessDefinition1, CopyOptions.create().setIgnoreNullValue(true));
            processList.add(myProcessDefinition1);
        }
        return processList;
    }
}