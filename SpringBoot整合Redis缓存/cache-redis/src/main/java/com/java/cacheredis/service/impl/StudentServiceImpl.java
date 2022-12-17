package com.java.cacheredis.service.impl;

import com.java.cacheredis.entity.Student;
import com.java.cacheredis.mapper.StudentMapper;
import com.java.cacheredis.service.StudentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author hevean
 * @since 2022-12-03
 */
@Service
public class StudentServiceImpl extends ServiceImpl<StudentMapper, Student> implements StudentService {
    // 注入redis操作模板
    @Autowired
    RedisTemplate redisTemplate;

    // 重载原来方法，根据id查询用户
    @Override
    public Student getById(Serializable id){
        Object obj = redisTemplate.opsForValue().get("student_"+id);
        if (obj == null){
            // 从数据库读取对象记录并存入redis缓存
            Student student=super.getById(id);
            System.out.println("student:"+student);
            redisTemplate.opsForValue().set("student_"+id,student);
            return  student;
        }
        return (Student) obj;
    }

    @Override
    public boolean removeById(Serializable id){
        // 删除数据库记录
        if (super.removeById(id)==true){
            // 更新缓存
            redisTemplate.delete("student_"+id);
            return true;
        }else {
            // 实际工程中会跳出异常
            return false;
        }
    }

    @Override
    public boolean updateById(Student student){
        // 更新数据库记录
        if(super.updateById(student)==true){
            //更新缓存
            Student stu=super.getById(student.getId());
            redisTemplate.opsForValue().set("student_"+stu.getId(),stu);
            return true;
        }
        return false;
    }

    // 根据用户名生成短信验证码，存入redis，有效时间为20s
    @Override
    public String genSmsCode(String studentNo){
        // 判断用户名是否存在
        Student student=this.lambdaQuery().eq(Student::getStudentNo,studentNo).one();
        if (student==null){
            return null;
        }
        int smsCode=(int)(Math.random()*9000+1000);
        redisTemplate.opsForValue().set(studentNo,smsCode,20, TimeUnit.SECONDS);
        return String.valueOf(smsCode);
    }

    // 根据验证码登录
    @Override
    public boolean loginBySmsCode(String studentNo,String smsCode){
        // 获取过期时间
        // long ttl = redisTemplate.getExpire(username,TimeUnit.SECONDS);
        Object obj=redisTemplate.opsForValue().get(studentNo);
        if (obj==null || obj != smsCode){
            return false;
        }else {
            return true;
        }
    }
}
