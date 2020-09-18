package com.allblue.modules.activiti.custom;

/**
 * @Date:2020/1/14
 */

import com.allblue.modules.sys.entity.RoleEntity;
import com.allblue.modules.sys.service.RoleService;
import com.allblue.modules.sys.service.UserRoleService;
import com.allblue.modules.sys.service.UserService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.impl.persistence.entity.UserEntity;
import org.activiti.engine.impl.persistence.entity.UserEntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 自定义用户管理类，管理用户方法
 * 添加其他方法
 */
@Component("customUserEntityManager")
public class CustomUserEntityManager extends UserEntityManager {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private UserRoleService userRoleService;
    @Override
    public User findUserById(String userId){
        User userEntity=new UserEntity();
        com.allblue.modules.sys.entity.UserEntity user=userService.selectById(userId);
        //将自定义的user转化为activiti的类
        userEntity=ActivitiUserUtils.toActivitiUser(user);
        //返回activiti的实体类
        return userEntity;
    }

    @Override
    public List<Group> findGroupsByUser(final String userId) {
        if(userId==null){
            return null;
        }
        List<RoleEntity> roleList=new ArrayList<RoleEntity>();
        List<Long> userRoleList=userRoleService.queryRoleIdList(Long.valueOf(userId));
        for (Long aLong : userRoleList) {
            RoleEntity role=roleService.selectById(aLong);
            roleList.add(role);
        }
        List<Group> gs=null;
        gs=ActivitiUserUtils.toActivitiGroups(roleList);
        return gs;
    }
}
