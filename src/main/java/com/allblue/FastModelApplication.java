package com.allblue;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(basePackages = {"com.allblue.modules.*.dao"})
@SpringBootApplication(exclude = {
        org.activiti.spring.boot.SecurityAutoConfiguration.class
        , org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class
})
public class FastModelApplication {

    public static void main(String[] args) {
        SpringApplication.run(FastModelApplication.class, args);
    }

}
