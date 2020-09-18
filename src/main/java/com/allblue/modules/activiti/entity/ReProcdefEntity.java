package com.allblue.modules.activiti.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @date 2020-07-21 15:43:34
 */
@TableName("act_re_procdef")
@Data
public class ReProcdefEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private String id;
	/**
	 * 
	 */
	private Integer rev;
	/**
	 * 
	 */
	private String category;
	/**
	 * 
	 */
	private String name;
	/**
	 * 
	 */
	private String key;
	/**
	 * 
	 */
	private Integer version;
	/**
	 * 
	 */
	private String deploymentId;
	/**
	 * 
	 */
	private String resourceName;
	/**
	 * 
	 */
	private String dgrmResourceName;
	/**
	 * 
	 */
	private String description;
	/**
	 * 
	 */
	private Integer hasStartFormKey;
	/**
	 * 
	 */
	private Integer hasGraphicalNotation;
	/**
	 * 
	 */
	private Integer suspensionState;
	/**
	 * 
	 */
	private String tenantId;

}
