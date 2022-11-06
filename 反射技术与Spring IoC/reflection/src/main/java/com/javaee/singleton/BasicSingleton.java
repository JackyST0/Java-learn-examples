package com.javaee.singleton;
public class BasicSingleton {
    /**
     * 使用静态变量
     */
     private static BasicSingleton instance = null;
    /**
     * 构造函数私有化,禁止使用new 创建对象
     */
    private BasicSingleton(){};

    /**
     * 提供静态的获取实例的接口
     */
   public static BasicSingleton getInstance(){
       if(instance == null){                // 这里线程是不安全的，可能得到两个不同的实例
           instance = new BasicSingleton();
       }
       return instance;
   }

    /*测试方法*/
    public static void main(String[] args) {
        BasicSingleton instance1 = BasicSingleton.getInstance();
        BasicSingleton instance2 = BasicSingleton.getInstance();
        System.out.println("懒汉式：instance1和instance2是否相等:" + (instance1 == instance2));
    }
}
