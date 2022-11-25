package com.javaee.mybatis.relations.mapper;

import com.javaee.mybatis.relations.domain.Student;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudentMapper {

    /**
     * 根据学生id查询学生对象及其对应的分数信息
     */
    public Student getStudentWithScoresById(Long id);
}
