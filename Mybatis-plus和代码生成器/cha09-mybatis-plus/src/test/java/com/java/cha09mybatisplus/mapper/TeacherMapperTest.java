package com.java.cha09mybatisplus.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.java.cha09mybatisplus.entity.Teacher;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Author JianXin
 * @Date 2022/11/26 22:28
 * @Github https://github.com/JackyST0
 */

@SpringBootTest
class TeacherMapperTest {
    @Autowired
    TeacherMapper teacherMapper;

    @Test
    public void testListAll(){
        List<Teacher> teacherList=teacherMapper.selectList(null);
        teacherList.forEach(System.out::println);
    }

    @Test
    public  void  testAdd(){
        Teacher teacher=Teacher.builder().age(22).cellphone("13549800989").email("yangming@126.com").name("662").office("明德楼808").build();
        teacher.setUpdatedTime(null);
        int result=teacherMapper.insert(teacher);
        Teacher teacher1=teacherMapper.selectById(teacher.getId());
        System.out.println("插入记录数:"+result+";新纪录的id:"+teacher1.getId()+";teacher1:"+teacher1);
    }

    @Test
    public void testDelete(){
        int result=teacherMapper.deleteById(113L);
        System.out.println("删除记录数:"+result);
    }

    @Test
    public void testUpdata(){
        Teacher teacher=teacherMapper.selectById(1L);
        teacher.setOffice("厚德楼807");
        teacher.setCellphone("15820558631");
        teacherMapper.updateById(teacher);
        //再次查询是否更新后的对象
        System.out.println(teacherMapper.selectById(1L));
    }

    @Test
    public void testQueryWrapper(){
        //查询name不为空的用户，并且职称为讲师，年龄小于等于40的教师
        QueryWrapper<Teacher> wrapper=new QueryWrapper<>();
        wrapper.isNotNull("name").eq("title","讲师").le("age",50);
        teacherMapper.selectList(wrapper).forEach(System.out::println);
    }

    @Test
    public void testLambdaQueryWrapper(){
        //查询姓名为李莎的教师
        LambdaQueryWrapper<Teacher> lqw=new LambdaQueryWrapper<>();
        lqw.eq(Teacher::getName,"李莎");
        System.out.println(teacherMapper.selectOne(lqw));
    }
}