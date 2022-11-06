package com.javaee.javaconfig;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration

@ComponentScan(basePackages = "com.javaee.annotation")
public class JavaConfig {
    @Bean
    public MyBean myBean(){
        return new MyBean();
    }
}
