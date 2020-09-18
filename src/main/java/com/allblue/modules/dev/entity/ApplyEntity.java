package com.allblue.modules.dev.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * 
 * @date 2020-07-21 11:19:16
 */
@TableName(value = "dev_apply",resultMap = "applyMap")
@Data
public class ApplyEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 请假人id
	 */
	private Long userId;
	@TableField(exist = false)
	private String chineseName;

	/**
	 * 流程实例id
	 */
	private String processInstanceId;
	/**
	 * 流程定义id
	 */
	@TableField(exist = false)
	private String processDefinitionId;
	/**
	 * 请假理由
	 */
	private String content;

	/**
	 * 
	 */
	private Date createTime;
	/**
	 * 开始日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
	private Date startDate;
	/**
	 * 结束日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
	private Date endDate;
	/**
	 * 状态 1 进行中 2 已完成 3.未通过
	 */
	private Integer status;

}
