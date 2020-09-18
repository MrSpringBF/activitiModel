package com.allblue.modules.activiti.dao;

import com.allblue.modules.activiti.entity.ReModelEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 
 * @date 2018-08-30 11:18:12
 */
public interface ReModelDao extends BaseMapper<ReModelEntity> {
    List selectModel(Page<ReModelEntity> page, @Param("name") String name, @Param("id") String id);

    ReModelEntity selectByID(@Param("id") String modelId);

    void deleteByID(@Param("id") String modelId);

    ReModelEntity selectByName(@Param("name") String name);
}
