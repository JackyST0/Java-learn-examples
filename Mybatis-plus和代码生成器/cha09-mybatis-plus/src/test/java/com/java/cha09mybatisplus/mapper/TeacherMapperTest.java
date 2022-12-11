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
        Teacher teacher=Teacher.builder().age(22).cellphone("13549800989").email("yangming@126.com").name("662").office("����¥808").build();
        teacher.setUpdatedTime(null);
        int result=teacherMapper.insert(teacher);
        Teacher teacher1=teacherMapper.selectById(teacher.getId());
        System.out.println("�����¼��:"+result+";�¼�¼��id:"+teacher1.getId()+";teacher1:"+teacher1);
    }

    @Test
    public void testDelete(){
        int result=teacherMapper.deleteById(113L);
        System.out.println("ɾ����¼��:"+result);
    }

    @Test
    public void testUpdata(){
        Teacher teacher=teacherMapper.selectById(1L);
        teacher.setOffice("���¥807");
        teacher.setCellphone("15820558631");
        teacherMapper.updateById(teacher);
        //�ٴβ�ѯ�Ƿ���º�Ķ���
        System.out.println(teacherMapper.selectById(1L));
    }

    @Test
    public void testQueryWrapper(){
        //��ѯname��Ϊ�յ��û�������ְ��Ϊ��ʦ������С�ڵ���40�Ľ�ʦ
        QueryWrapper<Teacher> wrapper=new QueryWrapper<>();
        wrapper.isNotNull("name").eq("title","��ʦ").le("age",50);
        teacherMapper.selectList(wrapper).forEach(System.out::println);
    }

    @Test
    public void testLambdaQueryWrapper(){
        //��ѯ����Ϊ��ɯ�Ľ�ʦ
        LambdaQueryWrapper<Teacher> lqw=new LambdaQueryWrapper<>();
        lqw.eq(Teacher::getName,"��ɯ");
        System.out.println(teacherMapper.selectOne(lqw));
    }
}