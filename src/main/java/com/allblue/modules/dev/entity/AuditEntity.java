package com.allblue.modules.dev.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @date 2020-07-22 14:49:33
 */
@TableName("dev_audit")
@Data
public class AuditEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 任务id
	 */
	private String taskId;
	/**
	 * 申请记录id
	 */
	private Long applyId;
	/**
	 * 流程实例id
	 */
	private String processInstanceId;
	/**
	 * 审核人id
	 */
	private Long userId;
	/**
	 * 审核意见
	 */
	private String content;
	/**
	 * 1 通过 0 未通过
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 是否同意
	 */
	@TableField(exist = false)
	private String agree;
}
