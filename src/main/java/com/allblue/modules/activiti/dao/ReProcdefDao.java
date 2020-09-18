package com.allblue.modules.activiti.dao;

import com.allblue.modules.activiti.entity.ReProcdefEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 
 * @date 2020-07-21 15:43:34
 */
public interface ReProcdefDao extends BaseMapper<ReProcdefEntity> {
    List selectDef(Page<ReProcdefEntity> page, @Param("name") String name, @Param("id") String id);

    ReProcdefEntity selectByID(@Param("id") String modelId);

    void deleteByID(@Param("id") String modelId);

    ReProcdefEntity selectByName(@Param("name") String name);
}
