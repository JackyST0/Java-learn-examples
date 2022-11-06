package com.javaee.reflection;

public class Student {
    Long id;
    String name;
    String major;


    // 输出当前类当前方法的名称
    public void display() {
        System.out.println("调用类:" + this.getClass().getName() + "的方法:" + Thread.currentThread().getStackTrace()[1].getMethodName());
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name='" + name + '\'' + ", major='" + major + '\'' + '}';
    }

    // setter & getter
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }
}
