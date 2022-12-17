package com.java.cacheredis.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.java.cacheredis.mapper")
public class MybatisPlusConfig {
}
