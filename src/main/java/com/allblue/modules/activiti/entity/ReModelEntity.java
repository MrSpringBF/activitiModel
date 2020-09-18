package com.allblue.modules.activiti.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 
 * @date 2018-08-30 11:18:12
 */
@TableName("act_re_model")
@Data
public class ReModelEntity implements Serializable {
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
	private String name;
	/**
	 *
	 */
	private String key;
	/**
	 *
	 */
	private String category;
	/**
	 *
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	/**
	 * 
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date lastUpdateTime;
	/**
	 * 
	 */
	private Integer version;
	/**
	 * 
	 */
	private String metaInfo;
	/**
	 * 
	 */
	private String deploymentId;
	/**
	 *
	 */
	private String editorSourceValueId;
	/**
	 *
	 */
	private String editorSourceExtraValueId;
	/**
	 *
	 */
	private String tenantId;


//	@TableField(exist = false)
//	private List<NodeEntity> nodeList;
}
