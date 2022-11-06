package com.javaee.servlets;

/**
 * 实体类
 */
public class User {
    String username; //姓名
    String password;
    String email;   // email地址
    Integer age;   //年龄
    String city;    // 所在城市

    public User(){}

    public User(String username, String password) {
        this.username = username;
        this.password =password;
    }
    public User(String username, String email, Integer age, String city) {
        this.username = username;
        this.email = email;
        this.age = age;
        this.city = city;
    }

    public User(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
