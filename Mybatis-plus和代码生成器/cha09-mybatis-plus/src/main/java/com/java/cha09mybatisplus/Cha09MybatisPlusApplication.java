package com.java.cha09mybatisplus;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.java.cha09mybatisplus.mapper")
@SpringBootApplication
public class Cha09MybatisPlusApplication {

    public static void main(String[] args) {
        SpringApplication.run(Cha09MybatisPlusApplication.class, args);
    }

}
