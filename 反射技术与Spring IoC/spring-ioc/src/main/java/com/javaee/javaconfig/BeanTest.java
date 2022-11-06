package com.javaee.javaconfig;

import com.javaee.annotation.CdPlayer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


/**
    基于Java配置类对象装配
 */
public class BeanTest {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JavaConfig.class);
        MyBean myBean = (MyBean) context.getBean("myBean");
        myBean.say();

        CdPlayer cdPlayer = (CdPlayer) context.getBean("cdPlayer");
        cdPlayer.playCD();
    }
}
