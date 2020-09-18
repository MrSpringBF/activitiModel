package com.allblue.modules.activiti.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.util.Date;
import java.util.Map;

/**
 * @Date:2020/2/25
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class MyTaskEntity {
    private String id;//任务id
    private String name;//任务名称
    private String assignee;//执行人
    private String description;//任务描述
    private Date createTime;//任务创建时间
    private Date startTime;//开始时间
    private Date endTime;//结束时间
    private String executionId;//执行id
    private String processInstanceId;//流程实例id
    private String processDefinitionId;//流程定义id
    private String taskDefinitionKey;
    @TableField(exist = false)
    private Map<String,String> params;
}
