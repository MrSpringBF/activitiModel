package com.allblue.modules.activiti.service.impl;

import com.allblue.modules.activiti.dao.ReProcdefDao;
import com.allblue.modules.activiti.entity.ReProcdefEntity;
import com.allblue.modules.activiti.service.ReProcdefService;
import com.allblue.utils.PageUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;


@Service("reProcdefService")
public class ReProcdefServiceImpl extends ServiceImpl<ReProcdefDao, ReProcdefEntity> implements ReProcdefService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        int size = Integer.parseInt((String)params.get("limit"));
        int current = Integer.parseInt((String)params.get("page"));
        Page<ReProcdefEntity> page = new Page<ReProcdefEntity>(current, size);// 当前页，总条数 构造 page 对象
        String id = (String)params.get("id");
        if (StringUtils.isBlank(id)){
            id=null;
        }
        String name = (String)params.get("name");
        if(StringUtils.isBlank(name)){
            name=null;
        }
        page.setRecords(this.baseMapper.selectDef(page,name,id));
        return new PageUtils(page);
    }

    @Override
    public ReProcdefEntity selectByID(String modelId) {
        return this.baseMapper.selectByID(modelId);
    }

    @Override
    public void deleteByID(String modelId) {
        this.baseMapper.deleteByID(modelId);
    }

    @Override
    public ReProcdefEntity selectByName(String name) {
        return this.baseMapper.selectByName(name);
    }

}
