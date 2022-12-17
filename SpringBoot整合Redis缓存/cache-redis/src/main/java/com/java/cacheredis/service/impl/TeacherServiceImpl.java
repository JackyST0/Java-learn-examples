package com.java.cacheredis.service.impl;

import com.java.cacheredis.entity.Teacher;
import com.java.cacheredis.mapper.TeacherMapper;
import com.java.cacheredis.service.TeacherService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.io.Serializable;

@Service
public class TeacherServiceImpl extends ServiceImpl<TeacherMapper, Teacher> implements TeacherService {


    // 重载原来方法，根据id查询用户
    @Override
    // @Cacheable标注的方法执行之前，先检查缓存中有没有这个数据，默认按照参数的值作为key去查询缓存，如果没有就运行方法并将结果放入缓存。
    @Cacheable(cacheNames = "teacher",unless="#result==null") // unless:否定缓存，当unless指定的条件为true，方法的返回值就不会被缓存；可以获取到结果进行判断。
    public Teacher getById(Serializable id){
        return super.getById(id);
    }

    @Override
    // @CacheEvict是用来标注在需要清除缓存元素的方法或类上的。当标记在一个类上时表示其中所有的方法的执行都会触发缓存的清除操作
    @CacheEvict(cacheNames = "teacher")
    public boolean removeById(Serializable id){
        return  super.removeById(id);
    }

    @Override
    // 与@Cacheable不同的是,使用@CachePut标注的方法在执行前不会去检查缓存中是否存在之前执行过的结果，而是每次都会执行该方法，并将执行结果以键值对的形式存入指定的缓存中
    @CachePut(cacheNames = "teacher",key = "#result.id")
    public Teacher update(Teacher teacher){
        if (this.updateById(teacher)==true){
            return super.getById(teacher.getId());
        }
        return null;
    }
}
