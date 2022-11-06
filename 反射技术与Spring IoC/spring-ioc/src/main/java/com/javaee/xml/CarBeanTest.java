package com.javaee.xml;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CarBeanTest {
    public static void main(String[] args) {
        testCarBean();
    }

    public static void testCarBean(){
        ClassPathXmlApplicationContext beanFactory =
                new ClassPathXmlApplicationContext("spring-config.xml");
        Car bydX6 = (Car) beanFactory.getBean("BYD-X6");
        System.out.println(bydX6);
        Car byd2 = (Car) beanFactory.getBean("BYD-X6");
        System.out.println("bydX6 和byd2是否相等:" + (bydX6 == byd2));
        System.out.println(bydX6);
    }
}
