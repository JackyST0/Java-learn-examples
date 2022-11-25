package com.javaee.mybatis.relations.domain;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Student {
    Long id;
    String studentNo;
    String name;
    Date enrollTime;
    String homeAddress;
    String classNo;
    int sex;
    Date birthday;

    /**学生的课程成绩列表*/
    List<Score> scoreList;
}
