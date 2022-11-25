package com.javaee.mybatis.relations.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javaee.mybatis.relations.domain.Teacher;
import com.javaee.mybatis.relations.mapper.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherService {
    @Autowired
    TeacherMapper teacherMapper; //注入teacherMapper

    public PageInfo<Teacher> page(int page, int size) {
        PageHelper.startPage(page, size);//设置相关参数
        //不分页时的查询结果
        List<Teacher> list = teacherMapper.listAll();
        return new PageInfo<>(list);
    }
}
