package com.allblue.modules.dev.service;

import com.allblue.utils.PageUtils;
import com.baomidou.mybatisplus.service.IService;
import com.allblue.modules.dev.entity.AuditEntity;

import java.util.Map;

/**
 * 
 * @date 2020-07-22 14:49:33
 */
public interface AuditService extends IService<AuditEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

