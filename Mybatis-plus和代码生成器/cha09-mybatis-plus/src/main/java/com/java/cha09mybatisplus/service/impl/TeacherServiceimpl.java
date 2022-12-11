package com.java.cha09mybatisplus.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.java.cha09mybatisplus.entity.Teacher;
import com.java.cha09mybatisplus.mapper.TeacherMapper;
import com.java.cha09mybatisplus.service.TeacherService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author JianXin
 * @Date 2022/11/26 22:25
 * @Github https://github.com/JackyST0
 */

@Service
@Transactional
public class TeacherServiceimpl extends ServiceImpl<TeacherMapper, Teacher> implements TeacherService {
}
