package com.allblue.modules.activiti.service.impl;

import com.allblue.modules.activiti.dao.ReModelDao;
import com.allblue.modules.activiti.entity.ReModelEntity;
import com.allblue.modules.activiti.service.ReModelService;
import com.allblue.utils.PageUtils;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Service("reModelService")
public class ReModelServiceImpl extends ServiceImpl<ReModelDao, ReModelEntity> implements ReModelService {
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private RepositoryService repositoryService;
//    @Autowired
//    private ActService actService;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        int size = Integer.parseInt((String)params.get("limit"));
        int current = Integer.parseInt((String)params.get("page"));
        Page<ReModelEntity> page = new Page<ReModelEntity>(current, size);// 当前页，总条数 构造 page 对象
        String id = (String)params.get("id");
        if (StringUtils.isBlank(id)){
            id=null;
        }
        String name = (String)params.get("name");
        if(StringUtils.isBlank(name)){
            name=null;
        }
        page.setRecords(this.baseMapper.selectModel(page,name,id));
        return new PageUtils(page);
    }



    @Override
    public ReModelEntity selectByID(String modelId) {
        return this.baseMapper.selectByID(modelId);
    }

    @Override
    public void deleteByID(String modelId) {
        this.baseMapper.deleteByID(modelId);
    }

    @Override
    public ReModelEntity selectByName(String name) {
        return this.baseMapper.selectByName(name);
    }

}
