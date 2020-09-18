package com.allblue.modules.activiti.controller;

import com.allblue.modules.activiti.entity.ReModelEntity;
import com.allblue.modules.activiti.service.ReModelService;
import com.allblue.utils.PageUtils;
import com.allblue.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Map;


/**
 * 
 * @date 2018-08-30 11:18:12
 */
@RestController
@RequestMapping("act/remodel")
public class ReModelController {
    @Autowired
    private ReModelService reModelService;
//    @Autowired
//    private ActivitiConfigService activitiConfigService;

    /**
     * 列表
     */
    @RequestMapping("/list")
//    @RequiresPermissions("act:remodel:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = reModelService.queryPage(params);

        return R.ok().put("page", page);
    }
    /**
     * 模型任务节点流程变量
     */
//    @RequestMapping("/nodeList/{modelId}")
//    @RequiresPermissions("act:remodel:list")
//    public R queryNodeList(@PathVariable("modelId") String modelId){
//        List<NodeEntity> nodeList = reModelService.queryNodeList(modelId);
//        ActivitiConfigEntity activitiConfigEntity = activitiConfigService.findByModelId(modelId);
//        if (activitiConfigEntity != null) {
//            Map<String, Object> auditConfig = activitiConfigEntity.getAuditConfig();
//            for (NodeEntity nodeEntity : nodeList) {
//                Object value = auditConfig.get(nodeEntity.getAssigneeParam());
//                if (value != null) {
//                    nodeEntity.setValue(value.toString());
//                }
//            }
//        }
//        return R.ok().put("nodeList", nodeList);
//    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
//    @RequiresPermissions("act:remodel:info")
    public R info(@PathVariable("id") String id){
        ReModelEntity reModel = reModelService.selectById(id);

        return R.ok().put("reModel", reModel);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
//    @RequiresPermissions("act:remodel:save")
    public R save(@RequestBody ReModelEntity reModel){
        reModelService.insert(reModel);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
//    @RequiresPermissions("act:remodel:update")
    public R update(@RequestBody ReModelEntity reModel){

        reModelService.updateAllColumnById(reModel);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
//    @RequiresPermissions("act:remodel:delete")
    public R delete(@RequestBody String[] ids){
        reModelService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
