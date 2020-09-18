package com.allblue.modules.dev.controller;

import java.util.Arrays;
import java.util.Map;

import com.allblue.modules.dev.entity.ApplyEntity;
import com.allblue.modules.dev.service.ApplyService;
import com.allblue.utils.PageUtils;
import com.allblue.utils.R;
import org.activiti.engine.RuntimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



/**
 * 
 * @date 2020-07-21 11:19:16
 */
@RestController
@RequestMapping("dev/apply")
public class ApplyController {
    @Autowired
    private ApplyService applyService;
    @Autowired
    private RuntimeService runtimeService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = applyService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ApplyEntity sysApply = applyService.selectById(id);

        return R.ok().put("sysApply", sysApply);
    }

    /**
     * 请假申请 开启工作流程
     */
    @RequestMapping("/save")
    public R save(@RequestBody ApplyEntity sysApply){

        applyService.saveApply(sysApply);
        return R.ok();
    }
    /**
     * 重新提交
     */
    @RequestMapping("/reApply")
    public R reApply(@RequestBody ApplyEntity sysApply){

        applyService.reApply(sysApply);
        return R.ok();
    }
    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ApplyEntity sysApply){
        applyService.updateAllColumnById(sysApply);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        applyService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
