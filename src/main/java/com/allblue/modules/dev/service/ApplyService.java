package com.allblue.modules.dev.service;

import com.allblue.modules.dev.entity.ApplyEntity;
import com.allblue.utils.PageUtils;
import com.baomidou.mybatisplus.service.IService;

import java.util.Map;

/**
 * 
 * @date 2020-07-21 11:19:16
 */
public interface ApplyService extends IService<ApplyEntity> {

    PageUtils queryPage(Map<String, Object> params);

    void saveApply(ApplyEntity sysApply);

    void reApply(ApplyEntity sysApply);
}

