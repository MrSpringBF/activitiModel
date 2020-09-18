package com.allblue.modules.activiti.controller;

import com.alibaba.fastjson.JSONObject;
import com.allblue.modules.activiti.entity.MyProcessDefinition;
import com.allblue.modules.dev.entity.ApplyEntity;
import com.allblue.modules.dev.service.ApplyService;
import com.allblue.modules.sys.entity.RoleEntity;
import com.allblue.modules.sys.entity.UserEntity;
import com.allblue.modules.sys.entity.UserRoleEntity;
import com.allblue.modules.sys.service.RoleService;
import com.allblue.modules.sys.service.UserRoleService;
import com.allblue.utils.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import lombok.extern.slf4j.Slf4j;
import org.activiti.bpmn.converter.BpmnXMLConverter;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.constants.ModelDataJsonConstants;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.*;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.Model;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.image.ProcessDiagramGenerator;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Date:2020/1/9
 */
@Controller
@Slf4j
@RequestMapping("/act")
public class ActController {
    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private HistoryService historyService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private ObjectMapper objectMapper;
    @Autowired
    private ImpoerModelUtil impoerModelUtil;
    @Autowired
    private ProcessEngine processEngine;
    @Autowired
    private ProcessEngineConfiguration processEngineConfiguration;
    @Autowired
    private UserRoleService userRoleService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private ApplyService applyService;

    /**
     * 查找我的任务
     */
    @RequestMapping("/queryMyTask")
    @ResponseBody
    public R queryMyTask(@RequestParam Map<String,Object> params){
        UserEntity user = ContextHolderUtils.getUser();
        UserRoleEntity userRoleEntity = userRoleService.selectOne(new EntityWrapper<UserRoleEntity>().eq("user_id", user.getUserId()));
        RoleEntity roleEntity = roleService.selectById(userRoleEntity.getRoleId());
        int page =1;
        int limit=10;
        int firstResult=(page-1)*limit;
        List<Task> taskList = taskService.createTaskQuery().taskCandidateGroup(roleEntity.getRoleName()).listPage(firstResult, limit);
        List<ApplyEntity> applyList=new ArrayList<>();
        for (Task task : taskList) {
            String processInstanceId = task.getProcessInstanceId();
            ApplyEntity applyEntity = applyService.selectOne(new EntityWrapper<ApplyEntity>().eq("process_instance_id", processInstanceId));
            applyList.add(applyEntity);
        }
        Page<ApplyEntity> applyEntityPage = new Page<>(page, limit);
        applyEntityPage.setRecords(applyList);
        PageUtils pageUtils = new PageUtils(applyEntityPage);
        return R.ok().put("page",pageUtils);
    }




    /**
     * 导出model的xml文件
     */
    @RequestMapping(value = "/export")
    public void export(String modelId, HttpServletResponse response) {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=utf-8");
        try {
            Model modelData = repositoryService.getModel(modelId);
            BpmnJsonConverter jsonConverter = new BpmnJsonConverter();
            //获取节点信息
            byte[] arg0 = repositoryService.getModelEditorSource(modelData.getId());
            JsonNode editorNode = new ObjectMapper().readTree(arg0);
            //将节点信息转换为xml
            BpmnModel bpmnModel = jsonConverter.convertToBpmnModel(editorNode);
            BpmnXMLConverter xmlConverter = new BpmnXMLConverter();
            byte[] bpmnBytes = xmlConverter.convertToXML(bpmnModel);

            ByteArrayInputStream in = new ByteArrayInputStream(bpmnBytes);
            IOUtils.copy(in, response.getOutputStream());
//                String filename = bpmnModel.getMainProcess().getId() + ".bpmn20.xml";
            String filename = modelData.getName() + ".bpmn20.xml";
            response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(filename, "UTF-8"));
            response.flushBuffer();
        } catch (Exception e){
            PrintWriter out = null;
            try {
                out = response.getWriter();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            out.write("未找到对应数据");
            e.printStackTrace();
        }
    }


    /**
     * 流程转化为可编辑模型
     *
     * @param processDefineModel 自定义流程定义(封装自己需要的属性)
     */
    @RequestMapping("/changeProcessToModel")
    @ResponseBody
    public String changeProcessToModel(MyProcessDefinition processDefineModel) {
        //todo
//        processDefineModel.setName("测试流程转换");
//        processDefineModel.setKey("ceshizx");
//        processDefineModel.setDescription("这是一个描述");
//        processDefineModel.setDeploymentId("22501");
        Model modelData = repositoryService.newModel();
        // 初始化Model
        ObjectNode modelObjectNode = objectMapper.createObjectNode();
        modelObjectNode.put(ModelDataJsonConstants.MODEL_NAME, processDefineModel.getName());
        modelObjectNode.put(ModelDataJsonConstants.MODEL_REVISION, 1);
        modelObjectNode.put(ModelDataJsonConstants.MODEL_DESCRIPTION, processDefineModel.getDescription());
        modelData.setMetaInfo(modelObjectNode.toString());
        modelData.setName(processDefineModel.getName());
        modelData.setKey(processDefineModel.getKey());
        // 保存模型
        repositoryService.saveModel(modelData);
        String deploymentId = processDefineModel.getDeploymentId();
        String processDefineResourceName = null;
        // 通过deploymentId取得某个部署的资源的名称
        List<String> resourceNames = processEngine.getRepositoryService().getDeploymentResourceNames(deploymentId);
        if (resourceNames != null && resourceNames.size() > 0) {
            for (String temp : resourceNames) {
                if (temp.indexOf(".xml") > 0) {
                    processDefineResourceName = temp;
                }
            }
        }
        /*
         * 读取资源
         * deploymentId:部署的id
         * resourceName：资源的文件名
         */
        InputStream bpmnStream = processEngine.getRepositoryService()
                .getResourceAsStream(deploymentId, processDefineResourceName);
        impoerModelUtil.creatModelByImpoutStream(bpmnStream, modelData.getId());
        return modelData.getId();
    }


    /**
     * @return com.alibaba.fastjson.JSONObject
     * @Description //TODO 生成流程图
     * @Date 15:39 2020/1/19
     * @Param [processInstanceId]
     **/
    @RequestMapping("/generateProcessImg")
    @ResponseBody
    public JSONObject generateProcessImg(String processInstanceId) throws IOException {

        //获取历史流程实例
        HistoricProcessInstance processInstance = historyService.createHistoricProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
        //获取流程图
        BpmnModel bpmnModel = repositoryService.getBpmnModel(processInstance.getProcessDefinitionId());

        ProcessDiagramGenerator diagramGenerator = processEngineConfiguration.getProcessDiagramGenerator();
        ProcessDefinitionEntity definitionEntity = (ProcessDefinitionEntity) repositoryService.getProcessDefinition(processInstance.getProcessDefinitionId());

        List<HistoricActivityInstance> highLightedActivitList = historyService.createHistoricActivityInstanceQuery().processInstanceId(processInstanceId).list();
        //高亮环节id集合
        List<String> highLightedActivitis = new ArrayList<String>();

        //高亮线路id集合
        List<String> highLightedFlows = getHighLightedFlows(definitionEntity, highLightedActivitList);

        for (HistoricActivityInstance tempActivity : highLightedActivitList) {
            String activityId = tempActivity.getActivityId();
            highLightedActivitis.add(activityId);
        }
        //配置字体
        InputStream imageStream = diagramGenerator.generateDiagram(bpmnModel, "png", highLightedActivitis, highLightedFlows, "宋体", "微软雅黑", "黑体", null, 2.0);
        BufferedImage bi = ImageIO.read(imageStream);

        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ImageIO.write(bi, "png", bos);
        //转换成字节
        byte[] bytes = bos.toByteArray();
        BASE64Encoder encoder = new BASE64Encoder();
        //转换成base64串
        String png_base64 = encoder.encodeBuffer(bytes);
        //删除 \r\n
        png_base64 = png_base64.replaceAll("\n", "").replaceAll("\r", "");

        bos.close();
        imageStream.close();
        return JsonUtil.getSuccessJson("success", png_base64);
    }

    public List<String> getHighLightedFlows(
            ProcessDefinitionEntity processDefinitionEntity,
            List<HistoricActivityInstance> historicActivityInstances) {

        // 用以保存高亮的线flowId
        List<String> highFlows = new ArrayList<String>();
        // 对历史流程节点进行遍历
        for (int i = 0; i < historicActivityInstances.size() - 1; i++) {
            // 得到节点定义的详细信息
            ActivityImpl activityImpl = processDefinitionEntity
                    .findActivity(historicActivityInstances.get(i)
                            .getActivityId());
            // 用以保存后需开始时间相同的节点
            List<ActivityImpl> sameStartTimeNodes = new ArrayList<ActivityImpl>();
            ActivityImpl sameActivityImpl1 = processDefinitionEntity
                    .findActivity(historicActivityInstances.get(i + 1)
                            .getActivityId());
            // 将后面第一个节点放在时间相同节点的集合里
            sameStartTimeNodes.add(sameActivityImpl1);
            for (int j = i + 1; j < historicActivityInstances.size() - 1; j++) {
                // 后续第一个节点
                HistoricActivityInstance activityImpl1 = historicActivityInstances
                        .get(j);
                // 后续第二个节点
                HistoricActivityInstance activityImpl2 = historicActivityInstances
                        .get(j + 1);
                // 如果第一个节点和第二个节点开始时间相同保存
                if (activityImpl1.getStartTime().equals(
                        activityImpl2.getStartTime())) {
                    ActivityImpl sameActivityImpl2 = processDefinitionEntity
                            .findActivity(activityImpl2.getActivityId());
                    sameStartTimeNodes.add(sameActivityImpl2);
                } else {
                    // 有不相同跳出循环
                    break;
                }
            }
            // 取出节点的所有出去的线
            List<PvmTransition> pvmTransitions = activityImpl
                    .getOutgoingTransitions();
            // 对所有的线进行遍历
            for (PvmTransition pvmTransition : pvmTransitions) {
                ActivityImpl pvmActivityImpl = (ActivityImpl) pvmTransition
                        .getDestination();
                // 如果取出的线的目标节点存在时间相同的节点里，保存该线的id，进行高亮显示
                if (sameStartTimeNodes.contains(pvmActivityImpl)) {
                    highFlows.add(pvmTransition.getId());
                }
            }
        }
        return highFlows;
    }

}
