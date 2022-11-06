package com.javaee.reflection;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;


public class Reflection {
    /**
     * 演示Java反射机制的使用
     */
    public static void main(String[] args) throws Exception {
        // 正常创建对象
        Student student = new Student();
        student.setName("张敏");
        student.setId(1000L);
        student.setMajor("软件工程");
        System.out.println("使用new方法构造方法,Student:"+student);

        // 使用反射创建对象
        // 1.获取类对应的Class类型
        Class<?> clz = Class.forName("com.javaee.reflection.Student");
        // 2.获取默认构造函数对象
        Constructor<?> constructor = clz.getConstructor();
        // 3.调用构造函数创建对象（step 2和step 3可以合并为1行）
        Object studentObj = constructor.newInstance();
        // 4.获取方法对象
        Method setNameMethod = clz.getMethod("setName", String.class);
        Method setIdMethod = clz.getMethod("setId", Long.class);
        Method setMajorMethod = clz.getMethod("setMajor", String.class);

        // 5.调用方法并传入参数
        setMajorMethod.invoke(studentObj,"张卓佳");
        setIdMethod.invoke(studentObj,1001L);
        setMajorMethod.invoke(studentObj,"计算机科学与技术");
        System.out.println("使用反射构造对象,StudentObj:"+studentObj);

        // 调用Student类的display方法
        new Reflection().invoke("com.javaee.reflection.Student","display");
    }

        // 使用反射调用对象方法, 不考虑方法参数
    public void invoke(String clzName, String methodName) throws Exception {
        Class<?> clz = Class.forName(clzName);
        Constructor<?> constructor = clz.getConstructor();
        Object obj = constructor.newInstance();
        Method method = clz.getMethod(methodName);
        method.invoke(constructor.newInstance());
    }
}
