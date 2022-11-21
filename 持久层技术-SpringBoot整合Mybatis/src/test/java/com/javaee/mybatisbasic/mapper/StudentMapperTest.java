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
        Student student=Student.builder().studentNo("2021020211").className("�������A��").homeAddress("��ɽ��ʯ���ѧԺ·2��")
                .name("�ŵ���").sex(1).birthday(new Date()).enrollTime(new Date()).build();
        studentMapper.add(student);
        System.out.println("������¼��idΪ:"+student.getId());
    }

    @Test
    void update() {
        Student student=studentMapper.getById(3L);
        System.out.println(student);
        student.setClassName("�Ƽ���A��");
        studentMapper.update(student);
        System.out.println(studentMapper.getById(3L));
    }

    @Test
    void deleteById() {
        // ����һ���¼�¼
        Student student=new Student();
        studentMapper.add(student);
        long id=student.getId();
        // ɾ���ü�¼
        studentMapper.deleteById(id);
        System.out.println("��ѯ��ʦid="+id+";��ѯ���:"+studentMapper.getById(id));
    }

    @Test
    void listAll() {
        System.out.println("ѧ������Ϊ:"+studentMapper.listAll().size());
    }

    @Test
    void findLikeName() {
        System.out.println(studentMapper.findLikeName("��"));
    }

    @Test
    void findByNameAndClassNo() {
        System.out.println("��ѯ�༶������");
        /**��ѯ�����Ͱ༶*/
        List query1=studentMapper.findByNameAndClassNo("��","�˹�");
        query1.forEach(System.out::println);

        /**��ѯ�༶*/
        System.out.println("��ѯ�༶");
        List query2=studentMapper.findByNameAndClassNo("","�˹�");
        query2.forEach(System.out::println);

        /**��ѯ����*/
        System.out.println("��ѯ����");
        List query3=studentMapper.findByNameAndClassNo("��","");
        query3.forEach(System.out::println);
    }

    @Test
    void batchInsert() {
        Random random=new Random();
        List<Student> studentList=new ArrayList<>();
        for (int i=0;i<3000;i++){
            Student student=Student.builder().className("�����༶"+i).homeAddress("������ͥ��ַ"+i).sex(random.nextInt(1))
                    .studentNo("2021"+i).name("��������"+i).build();
            studentList.add(student);
        }
        // ��¼��ʼʱ��
        long start=System.nanoTime();
        // 1.ʹ����ͨ�������
        // studentList.forEach(s->studentMapper.add(s));
        // 2.ʹ��������
        studentMapper.batchInsert(studentList);
        long end =System.nanoTime();
        System.out.println("ʱ�俪��Ϊ:"+(end-start)/1000/1000/1000.0+"��");


    }

    @Test
    void batchDelete() {
        Random random=new Random();
        List<Student> studentList=new ArrayList<>();
        for (int i=0;i<3000;i++){
            Student student=Student.builder().className("�����༶"+i).homeAddress("������ͥ��ַ"+i).sex(random.nextInt(1))
                    .studentNo("2022"+i).name("��������"+i).build();
            studentList.add(student);
        }
        // ����ɾ�����������
        studentMapper.batchDelete(studentList);
        System.out.println("����ɾ�����!");
    }
}