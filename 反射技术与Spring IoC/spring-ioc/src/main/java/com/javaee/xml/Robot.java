package com.javaee.xml;

import lombok.Data;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;


public class Robot {
 int price;
 Greeting greeting;
 public Greeting getGreeting(){
     return  greeting;
 }
 public void setGreeting(Greeting greeting){
     this.greeting = greeting;
 }
 public int getPrice(){
     return price;
 }
 public void setPrice(int price){
     this.price = price;
 }

 public void say(){
     System.out.println("我的价格为"+price);
     greeting.sayHello();
 }

 public static void main(String[] args){
     BeanFactory bf = new ClassPathXmlApplicationContext("spring-config.xml");
     Robot robot = (Robot) bf.getBean("robot");
     robot.say();
 }
}
