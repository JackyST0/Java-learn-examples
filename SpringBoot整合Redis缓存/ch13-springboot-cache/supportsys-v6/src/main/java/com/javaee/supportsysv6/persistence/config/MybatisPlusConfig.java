package com.javaee.supportsysv6.persistence.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.javaee.supportsysv6.persistence.mapper")
public class MybatisPlusConfig {
}
