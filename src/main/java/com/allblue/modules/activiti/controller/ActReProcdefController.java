package com.allblue.modules.activiti.controller;

import java.util.Arrays;
import java.util.Map;

import com.allblue.modules.activiti.entity.ReProcdefEntity;
import com.allblue.modules.activiti.service.ReProcdefService;
import com.allblue.utils.PageUtils;
import com.allblue.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;




/**
 * 
 * @date 2020-07-21 15:43:34
 */
@RestController
@RequestMapping("act/reprocdef")
public class ActReProcdefController {
    @Autowired
    private ReProcdefService reProcdefService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = reProcdefService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        ReProcdefEntity actReProcdef = reProcdefService.selectById(id);

        return R.ok().put("actReProcdef", actReProcdef);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ReProcdefEntity actReProcdef){
        reProcdefService.insert(actReProcdef);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ReProcdefEntity actReProcdef){

        reProcdefService.updateAllColumnById(actReProcdef);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody String[] ids){
        reProcdefService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

}
