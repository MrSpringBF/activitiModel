package com.allblue.modules.dev.enums;

import lombok.Getter;

/**
 * @Description 请假申请状态
 * @Author fs
 * @Date 2020/7/22 9:29
 */
@Getter
public enum ApplyStatus {
    ONGOING(1,"进行中"),
    FINISHED(2,"已完成"),
    UN_PASSED(3,"未通过")
    ;
    private Integer id;
    private String name;

    ApplyStatus(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
}
