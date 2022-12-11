package com.java.cha09mybatisplus.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.java.cha09mybatisplus.entity.Teacher;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Author JianXin
 * @Date 2022/11/26 22:26
 * @Github https://github.com/JackyST0
 */

@Mapper
public interface TeacherMapper extends BaseMapper<Teacher> {
}
