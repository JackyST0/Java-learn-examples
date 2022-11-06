package com.javaee.mvc.entity;

import java.util.Date;

/**
 * 票据对象实体类
 */
public class Ticket {
    Long id;          //票据id
    //票据创建者
    String creator;
    // 公司名称
    String company;
    //票据金额
    Double money;
    //票据主题
    String title;
    //票据主体
    String body;
    //类型
    String type;

    //创建时间
    Date createdTime;
    //修改时间
    Date updatedTime;

    //setter和getter


    public Ticket(String creator, String company, Double money, String title, String body, String type) {
        this.creator = creator;
        this.company = company;
        this.money = money;
        this.title = title;
        this.body = body;
        this.type = type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }
}
