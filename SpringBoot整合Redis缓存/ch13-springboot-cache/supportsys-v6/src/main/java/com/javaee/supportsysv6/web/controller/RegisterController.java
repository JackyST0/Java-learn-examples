package com.javaee.supportsysv6.web.controller;


import com.javaee.supportsysv6.biz.service.SysUserService;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import com.javaee.supportsysv6.web.domain.bean.ResultBean;
import com.javaee.supportsysv6.web.domain.dto.UserRegisterDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/05/11
 */
@Controller
public class RegisterController {
    @Autowired
    SysUserService sysUserService;

    @Autowired
    HttpSession session;

    @GetMapping("/register")
    public String index() {
        return "register";
    }

    /**
     * 用户注册
     */
    @PostMapping("/register")
    @ResponseBody
    public ResultBean register(@Valid @RequestBody UserRegisterDto userRegisterDto) {
        // 判断数据是否合法
        if (sysUserService.lambdaQuery().eq(SysUser::getUsername, userRegisterDto.getUsername()).list().size()>0){
            return  ResultBean.fail("用户名已经存在，不允许重复");
        }

        if (sysUserService.lambdaQuery().eq(SysUser::getEmail, userRegisterDto.getEmail()).list().size()>0){
            return  ResultBean.fail("email已经存在，不允许重复");
        }

        // 注册成功将账号和密码存入session，跳转到登录页面之后可以自动填充
        if (sysUserService.register(userRegisterDto)==true){
            Map map = new HashMap<String, String>();
            map.put("username",userRegisterDto.getUsername());
            map.put("password", userRegisterDto.getPassword());
            session.setAttribute("registerInfo", map);
        }
        return ResultBean.ok();
    }
}
