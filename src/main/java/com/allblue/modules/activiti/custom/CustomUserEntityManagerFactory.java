package com.allblue.modules.activiti.custom;

/**
 * @Date:2020/1/14
 */

import org.activiti.engine.impl.interceptor.Session;
import org.activiti.engine.impl.interceptor.SessionFactory;
import org.activiti.engine.impl.persistence.entity.UserIdentityManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 自定义user的管理工厂类
 */
@Service
public class CustomUserEntityManagerFactory implements SessionFactory {

    @Resource
    private CustomUserEntityManager customUserEntityManager;

    @Override
    public Class<?> getSessionType() {
        //此处也必须为activiti原生类
        return UserIdentityManager.class;
    }

    @Override
    public Session openSession() {
        return customUserEntityManager;
    }

}
