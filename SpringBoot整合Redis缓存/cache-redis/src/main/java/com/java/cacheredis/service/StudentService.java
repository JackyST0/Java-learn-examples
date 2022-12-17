package com.java.cacheredis.service;

import com.java.cacheredis.entity.Student;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author hevean
 * @since 2022-12-03
 */
public interface StudentService extends IService<Student> {


    // 根据用户名生成短信验证码，存入redis，有效时间为20s
    String genSmsCode(String studentNo);

    // 根据验证码登录
    boolean loginBySmsCode(String studentNo, String smsCode);
}
