package com.javaee.xml;

import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
    基于XML对象装配
 */
public class GreetingBeanTest {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext bf = new ClassPathXmlApplicationContext("spring-config.xml");
        Greeting greeting1 = (Greeting) bf.getBean("greeting");
        Greeting greeting2 = (Greeting) bf.getBean("greeting");
        System.out.println(greeting1 == greeting2);
        greeting1.sayHello();
 

    }
}


