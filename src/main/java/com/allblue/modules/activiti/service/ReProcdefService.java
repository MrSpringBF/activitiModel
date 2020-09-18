package com.allblue.modules.activiti.service;

import com.allblue.modules.activiti.entity.ReProcdefEntity;
import com.allblue.utils.PageUtils;
import com.baomidou.mybatisplus.service.IService;


import java.util.Map;

/**
 * 
 * @date 2020-07-21 15:43:34
 */
public interface ReProcdefService extends IService<ReProcdefEntity> {

    PageUtils queryPage(Map<String, Object> params);

    ReProcdefEntity selectByID(String modelId);

    void deleteByID(String modelId);

    ReProcdefEntity selectByName(String name);
}

