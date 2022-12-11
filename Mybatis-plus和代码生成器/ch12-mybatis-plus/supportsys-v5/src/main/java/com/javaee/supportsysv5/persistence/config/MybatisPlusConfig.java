package com.javaee.supportsysv5.persistence.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.javaee.supportsysv5.persistence.mapper")
public class MybatisPlusConfig {
}
