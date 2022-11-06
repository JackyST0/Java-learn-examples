package com.javaee.annotation;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
    基于注解对象装配
 */
public class TestJavaCfg {
    public static void main(String[] args){
        BeanFactory bf = new ClassPathXmlApplicationContext("spring-config.xml");
        CdPlayer cdPlayer = (CdPlayer) bf.getBean("cdPlayer");
        System.out.println("演示Spring的自动扫描装配。");
        cdPlayer.playCD();
    }
}
