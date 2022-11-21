package com.javaee.mybatisbasic.mapper;

import com.javaee.mybatisbasic.entity.Student;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Author JianXin
 * @Date 2022/11/14 17:13
 * @Github https://github.com/JackyST0
 */

@SpringBootTest
class StudentMapperTest {

    @Autowired
    StudentMapper studentMapper;

    @Test
    void getById() {
        System.out.println(studentMapper.getById(3L));
    }

    @Test
    void add() {
        Student student=Student.builder().studentNo("2021020211").className("软件工程A班").homeAddress("中山市石岐区学院路2号")
                .name("张丹峰").sex(1).birthday(new Date()).enrollTime(new Date()).build();
        studentMapper.add(student);
        System.out.println("新增记录的id为:"+student.getId());
    }

    @Test
    void update() {
        Student student=studentMapper.getById(3L);
        System.out.println(student);
        student.setClassName("云计算A班");
        studentMapper.update(student);
        System.out.println(studentMapper.getById(3L));
    }

    @Test
    void deleteById() {
        // 插入一个新记录
        Student student=new Student();
        studentMapper.add(student);
        long id=student.getId();
        // 删除该记录
        studentMapper.deleteById(id);
        System.out.println("查询教师id="+id+";查询结果:"+studentMapper.getById(id));
    }

    @Test
    void listAll() {
        System.out.println("学生总数为:"+studentMapper.listAll().size());
    }

    @Test
    void findLikeName() {
        System.out.println(studentMapper.findLikeName("李"));
    }

    @Test
    void findByNameAndClassNo() {
        System.out.println("查询班级和姓名");
        /**查询姓名和班级*/
        List query1=studentMapper.findByNameAndClassNo("李","人工");
        query1.forEach(System.out::println);

        /**查询班级*/
        System.out.println("查询班级");
        List query2=studentMapper.findByNameAndClassNo("","人工");
        query2.forEach(System.out::println);

        /**查询姓名*/
        System.out.println("查询姓名");
        List query3=studentMapper.findByNameAndClassNo("李","");
        query3.forEach(System.out::println);
    }

    @Test
    void batchInsert() {
        Random random=new Random();
        List<Student> studentList=new ArrayList<>();
        for (int i=0;i<3000;i++){
            Student student=Student.builder().className("批量班级"+i).homeAddress("批量家庭地址"+i).sex(random.nextInt(1))
                    .studentNo("2021"+i).name("批量姓名"+i).build();
            studentList.add(student);
        }
        // 记录开始时间
        long start=System.nanoTime();
        // 1.使用普通插入操作
        // studentList.forEach(s->studentMapper.add(s));
        // 2.使用批插入
        studentMapper.batchInsert(studentList);
        long end =System.nanoTime();
        System.out.println("时间开锁为:"+(end-start)/1000/1000/1000.0+"秒");


    }

    @Test
    void batchDelete() {
        Random random=new Random();
        List<Student> studentList=new ArrayList<>();
        for (int i=0;i<3000;i++){
            Student student=Student.builder().className("批量班级"+i).homeAddress("批量家庭地址"+i).sex(random.nextInt(1))
                    .studentNo("2022"+i).name("批量姓名"+i).build();
            studentList.add(student);
        }
        // 批量删除插入的数据
        studentMapper.batchDelete(studentList);
        System.out.println("批量删除完成!");
    }
}