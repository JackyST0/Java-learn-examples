package com.javaee.singleton;
public class HungrySingleton {


    private HungrySingleton() {
    }

    /**
     * 1.单例模式的饿汉式[可用]
     */
    private static HungrySingleton singleton = new HungrySingleton();

    /*提供静态的获取实例的接口 */
    public static HungrySingleton getInstance() {
        return singleton;
    }

    /*测试方法*/
    public static void main(String[] args) {
        HungrySingleton instance1 = HungrySingleton.getInstance();
        HungrySingleton instance2 = HungrySingleton.getInstance();
        System.out.println("饿汉式：instance1和instance2是否相等:" + (instance1 == instance2));
    }
}
