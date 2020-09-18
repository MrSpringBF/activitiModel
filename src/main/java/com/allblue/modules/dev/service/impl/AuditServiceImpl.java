package com.allblue.modules.dev.service.impl;

import com.allblue.utils.PageUtils;
import com.allblue.utils.Query;
import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import com.allblue.modules.dev.dao.AuditDao;
import com.allblue.modules.dev.entity.AuditEntity;
import com.allblue.modules.dev.service.AuditService;


@Service("auditService")
public class AuditServiceImpl extends ServiceImpl<AuditDao, AuditEntity> implements AuditService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<AuditEntity> page = this.selectPage(
                new Query<AuditEntity>(params).getPage(),
                new EntityWrapper<AuditEntity>()
        );

        return new PageUtils(page);
    }

}
