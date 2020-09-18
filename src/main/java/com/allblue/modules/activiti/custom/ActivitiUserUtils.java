package com.allblue.modules.activiti.custom;

/**
 * @Date:2020/1/14
 */

import com.allblue.modules.sys.entity.RoleEntity;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.impl.persistence.entity.GroupEntity;
import org.activiti.engine.impl.persistence.entity.UserEntity;

import java.util.ArrayList;
import java.util.List;

/**
 * 将业务中自己定义的用户、角色转化为activiti中使用的user、group
 */
public class ActivitiUserUtils {
    public static User toActivitiUser(com.allblue.modules.sys.entity.UserEntity bUser){
        User userEntity=new UserEntity();
        userEntity.setId(bUser.getUsername());
        userEntity.setEmail(bUser.getEmail());
        userEntity.setPassword(bUser.getPassword());
        return userEntity;
    }
    public static GroupEntity toActivitiGroup(RoleEntity sysRole){
        GroupEntity groupEntity=new GroupEntity();
        groupEntity.setRevision(1);
        groupEntity.setType("assignment");
        groupEntity.setId(String.valueOf(sysRole.getRoleId()));
        groupEntity.setName(sysRole.getRoleName());
        return groupEntity;
    }
    public static List<Group> toActivitiGroups(List<RoleEntity> sysRoles){
        List<Group> groups=new ArrayList<Group>();
        for (RoleEntity role:sysRoles
        ) {
            GroupEntity groupEntity=toActivitiGroup(role);
            groups.add(groupEntity);
        }
        return groups;
    }
}
