package com.javaee.mybatisbasic.mapper;

import com.javaee.mybatisbasic.entity.Teacher;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @Author JianXin
 * @Date 2022/11/14 13:27
 * @Github https://github.com/JackyST0
 */

@SpringBootTest
class TeacherMapperTest {
    @Autowired
    TeacherMapper teacherMapper;

    @Test
    void getById() {
        System.out.println(teacherMapper.getById(2));
    }

    @Test
    void add() {
        Teacher teacher=Teacher.builder().age(34).cellphone("13549896090")
                        .email("li@liyuncom").name("李莎").office("明德楼502").build();
        teacherMapper.add(teacher);
        System.out.println("新增记录的id为:"+teacher.getId());
    }

    @Test
    void listAll() {
        System.out.println("教师列表如下:");
        teacherMapper.listAll().forEach(System.out::println);
    }

    @Test
    void findByName() {
        System.out.println(teacherMapper.findByName("李"));
    }

    @Test
    void update() {
        Teacher teacher=teacherMapper.getById(3L);
        System.out.println(teacher);
        teacher.setOffice("厚德楼821");
        teacherMapper.update(teacher);
        System.out.println(teacherMapper.getById(3L));
    }

    @Test
    void deleteById() {
        // 插入一个新记录
        Teacher teacher=Teacher.builder().age(24).cellphone("13549896050")
                .email("li@aliyuncom").name("王飞").office("明德楼502").build();
        teacherMapper.add(teacher);
        long id=teacher.getId();
        // 删除该纪录
        teacherMapper.deleteById(id);
        System.out.println("查询教师id="+id+";查询结果:"+teacherMapper.getById(id));
    }
}