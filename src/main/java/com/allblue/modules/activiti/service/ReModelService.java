package com.allblue.modules.activiti.service;

import com.allblue.modules.activiti.entity.ReModelEntity;
import com.allblue.utils.PageUtils;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;
import java.util.Map;

/**
 * 
 * @date 2018-08-30 11:18:12
 */
public interface ReModelService extends IService<ReModelEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 查询模型需要配置的参数
     * @param modelId
     * @return
     */
//    List<NodeEntity> queryNodeList(String modelId);

    ReModelEntity selectByID(String modelId);

    void deleteByID(String modelId);

    ReModelEntity selectByName(String name);
}

