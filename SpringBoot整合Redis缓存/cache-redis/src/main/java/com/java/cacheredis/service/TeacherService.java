package com.java.cacheredis.service;

import com.java.cacheredis.entity.Teacher;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.cache.annotation.CachePut;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author hevean
 * @since 2022-12-03
 */
public interface TeacherService extends IService<Teacher> {

    @CachePut(cacheNames = "teacher",key = "#result.id")
    Teacher update(Teacher teacher);
}
