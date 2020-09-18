package com.allblue.modules.activiti.entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 自定义processInstance返回字段
 * @Date:2020/2/24
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class MyProcessInstance {
    private String processInstanceId;
    private String processDefinitionId;
    private String processDefinitionKey;
    private String processDefinitionName;
    private String deploymentId;
    private String activityId;
    private String activityName;
    private String businessKey;
    private String modelId;
    private Date startTime;//开始时间
    private Date endTime;//结束时间


}
