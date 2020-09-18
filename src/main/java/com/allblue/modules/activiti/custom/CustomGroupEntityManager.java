package com.allblue.modules.activiti.custom;

/**
 * @Date:2020/1/14
 */

import com.allblue.modules.sys.entity.RoleEntity;
import com.allblue.modules.sys.entity.UserEntity;
import com.allblue.modules.sys.service.RoleService;
import com.allblue.modules.sys.service.UserRoleService;
import com.allblue.modules.sys.service.UserService;

import org.activiti.engine.identity.Group;
import org.activiti.engine.impl.persistence.entity.GroupEntity;
import org.activiti.engine.impl.persistence.entity.GroupEntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 自定义角色管理
 * 具体方法进入GroupEntityManager中查看
 */
@Component("customGroupEntityManager")
public class CustomGroupEntityManager extends GroupEntityManager {
    @Autowired
    private UserService userService;
    @Autowired
    private UserRoleService userRoleService;
    @Autowired
    private RoleService roleService;



    @Override
    public Group createNewGroup(String groupId) {
        return super.createNewGroup(groupId);
    }

    /**
     * 查找角色
     * @param userId
     * @return
     */
    @Override
    public List<Group> findGroupsByUser(final String userId) {
        if(userId==null){
            return null;
        }
        System.out.println("userId:"+userId);
        UserEntity rocIdUser=userService.selectById(userId);
        List<Long> roleIdList=userRoleService.queryRoleIdList(rocIdUser.getUserId());
        System.out.println("roleIdList size:"+roleIdList.size());
        List<Group> gs=new ArrayList<Group>();
        GroupEntity groupEntity;
        String roleId;
        String activitiRole;

        for (Long aLong : roleIdList) {
            groupEntity=new GroupEntity();
            groupEntity.setRevision(1);
            groupEntity.setType("assignment");
            RoleEntity role=roleService.selectById(aLong);
            groupEntity.setId(String.valueOf(role.getRoleId()));
            groupEntity.setName(role.getRoleName());
            gs.add(groupEntity);
        }

        return gs;
    }

}
