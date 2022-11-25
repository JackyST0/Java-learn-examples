package com.javaee.mybatis.relations.domain.vo;

import com.javaee.mybatis.relations.domain.Course;
import lombok.Data;

/**
 * 定义要查询的和两个表都关联的字段值
 * VO  自定义视图层对象,CourseVo包含课程信息和课程授课老师的相关信息
 */
@Data
public class CourseVo extends Course {
    String teacherName;
    String teacherEmail;
    String teacherOffice;
}
