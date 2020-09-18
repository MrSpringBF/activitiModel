package com.allblue.modules.dev.service.impl;

import com.allblue.modules.dev.dao.ApplyDao;
import com.allblue.modules.dev.entity.ApplyEntity;
import com.allblue.modules.dev.enums.ApplyStatus;
import com.allblue.modules.dev.service.ApplyService;
import com.allblue.modules.sys.entity.UserEntity;
import com.allblue.utils.ContextHolderUtils;
import com.allblue.utils.PageUtils;
import com.allblue.utils.Query;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;



@Service("applyService")
public class ApplyServiceImpl extends ServiceImpl<ApplyDao, ApplyEntity> implements ApplyService {

    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private TaskService taskService;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        EntityWrapper<ApplyEntity> ew = new EntityWrapper<>();
        UserEntity user = ContextHolderUtils.getUser();
        ew.eq("user_id",user.getUserId());
        Page<ApplyEntity> page = this.selectPage(
                new Query<ApplyEntity>(params).getPage(),ew
        );

        return new PageUtils(page);
    }

    @Override
    public void saveApply(ApplyEntity applyEntity) {
        String processDefinitionId = applyEntity.getProcessDefinitionId();
        UserEntity user = ContextHolderUtils.getUser();
        Map<String,Object> map=new HashMap<>();
        map.put("user",user.getUserId());
        ProcessInstance processInstance = runtimeService.startProcessInstanceById(processDefinitionId, map);
        Task task = taskService.createTaskQuery().processInstanceId(processInstance.getProcessInstanceId()).taskAssignee(user.getUserId().toString()).singleResult();
        taskService.complete(task.getId());
        applyEntity.setProcessInstanceId(processInstance.getProcessInstanceId());
        applyEntity.setUserId(user.getUserId());
        applyEntity.setCreateTime(new Date());
        applyEntity.setStatus(ApplyStatus.ONGOING.getId());
        this.insert(applyEntity);
    }

    @Override
    public void reApply(ApplyEntity applyEntity) {
        ApplyEntity apply = this.selectById(applyEntity);
        UserEntity user = ContextHolderUtils.getUser();
        Task task = taskService.createTaskQuery().processInstanceId(apply.getProcessInstanceId()).taskAssignee(user.getUserId().toString()).singleResult();
        taskService.complete(task.getId());
        applyEntity.setStatus(ApplyStatus.ONGOING.getId());
        this.updateById(applyEntity);
    }

}
