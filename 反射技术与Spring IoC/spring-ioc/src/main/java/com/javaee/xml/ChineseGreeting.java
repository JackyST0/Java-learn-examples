package com.javaee.xml;



public class ChineseGreeting implements Greeting {
    @Override
    public void sayHello(){
        System.out.println("你吃饭没有?");
        System.out.println("要去哪里？");
        System.out.println("再见!");
    }
}
