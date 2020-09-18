package com.allblue;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class FastModelApplicationTests {
    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private TaskService taskService;
    //查询所有部署的流程定义
    @Test
    public void test1(){
        runtimeService.deleteProcessInstance("5017","11");
        runtimeService.deleteProcessInstance("5008","11");
    }
    //开启流程定义
    @Test
    public void test2(){
        ProcessInstance processInstance = runtimeService.startProcessInstanceById("roletest:1:5007");
        System.out.println(processInstance);
    }
    //根据角色查询任务,角色任务被领取(claim)之后 不会再被查询到
    @Test
    public void test3(){
        List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("管理员").list();
        System.out.println(tasks);
    }
    //领取角色任务
    @Test
    public void test4(){
        taskService.claim("7504","1");
    }
    //查询个人任务
    @Test
    public void test5(){
        List<Task> list = taskService.createTaskQuery().taskAssignee("1").list();
        System.out.println(list);
    }
    //完成个人任务
    @Test
    public void test6(){
        taskService.complete("15005");
        taskService.complete("15011");
        taskService.complete("15017");
    }
}
