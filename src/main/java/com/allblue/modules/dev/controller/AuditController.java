package com.allblue.modules.dev.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.allblue.modules.dev.entity.ApplyEntity;
import com.allblue.modules.dev.enums.ApplyStatus;
import com.allblue.modules.dev.service.ApplyService;
import com.allblue.modules.sys.entity.RoleEntity;
import com.allblue.modules.sys.entity.UserEntity;
import com.allblue.modules.sys.entity.UserRoleEntity;
import com.allblue.modules.sys.service.RoleService;
import com.allblue.modules.sys.service.UserRoleService;
import com.allblue.utils.ContextHolderUtils;
import com.allblue.utils.PageUtils;
import com.allblue.utils.R;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.allblue.modules.dev.entity.AuditEntity;
import com.allblue.modules.dev.service.AuditService;




/**
 * 
 * @date 2020-07-22 14:49:33
 */
@RestController
@RequestMapping("dev/audit")
public class AuditController {
    @Autowired
    private AuditService auditService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private UserRoleService userRoleService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private ApplyService applyService;
    @Autowired
    private RuntimeService runtimeService;
    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = auditService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        AuditEntity audit = auditService.selectById(id);

        return R.ok().put("audit", audit);
    }

    /**
     * 审核任务
     */
    @RequestMapping("/audit")
    public R save(@RequestBody AuditEntity audit){
        String processInstanceId = audit.getProcessInstanceId();
        UserEntity user = ContextHolderUtils.getUser();
        UserRoleEntity userRoleEntity = userRoleService.selectOne(new EntityWrapper<UserRoleEntity>().eq("user_id", user.getUserId()));
        RoleEntity roleEntity = roleService.selectById(userRoleEntity.getRoleId());
        Task task = taskService.createTaskQuery().processInstanceId(processInstanceId).taskCandidateGroup(roleEntity.getRoleName()).singleResult();
        audit.setCreateTime(new Date());
        audit.setStatus(Integer.valueOf(audit.getAgree()));
        audit.setTaskId(task.getId());
        audit.setUserId(user.getUserId());
        Map<String,Object> params=new HashMap<>();
        params.put("agree",audit.getAgree());
        taskService.complete(task.getId(),params);
        ApplyEntity applyEntity = applyService.selectOne(new EntityWrapper<ApplyEntity>().eq("process_instance_id", processInstanceId));
        if (audit.getAgree().equals("0")) {
            applyEntity.setStatus(ApplyStatus.UN_PASSED.getId());
            applyService.updateById(applyEntity);
        }else {
            ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
            if (processInstance == null) {
                applyEntity.setStatus(ApplyStatus.FINISHED.getId());
                applyService.updateById(applyEntity);
            }
        }
        auditService.insert(audit);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody AuditEntity audit){

        auditService.updateAllColumnById(audit);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        auditService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
