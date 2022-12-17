package com.javaee.supportsysv6.web.controller;


import com.javaee.supportsysv6.biz.domain.WebConstants;
import com.javaee.supportsysv6.biz.enums.UserStatusEnum;
import com.javaee.supportsysv6.biz.service.SysUserService;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import com.javaee.supportsysv6.web.domain.bean.ResultBean;
import com.javaee.supportsysv6.web.domain.dto.UserLoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/05/11
 */
@Controller
public class LoginController {
    @Autowired
    HttpSession session;
    @Autowired
    SysUserService sysUserService;

    @GetMapping(value = {"/index","/","/login"})
    public String toLogin(Model model) {

        // 获取session用户名和密码进行填充
        if (session.getAttribute("registerInfo")!=null) {
            Map map = (Map) session.getAttribute("registerInfo");
            model.addAttribute("username", map.get("username"));
            model.addAttribute("password", map.get("password"));
        }
        return "login";
    }


    @PostMapping("/login")
    @ResponseBody
    public ResultBean login(@RequestBody UserLoginDto userDto) {
        SysUser user = sysUserService.lambdaQuery().eq(SysUser::getUsername, userDto.getUsername())
                .eq(SysUser ::getPassword, userDto.getPassword()).one();
        // 判断账号和密码是否匹配
        if (user != null){
            // 账号被激活
            if (user.getStatus().equals(UserStatusEnum.USER_ACTIVE.getCode())) {
                // 将用户对象存入session
                session.setAttribute(WebConstants.LOGIN_USER, user);
                return ResultBean.ok();
            }else {
                return ResultBean.fail("用户尚未激活,请联系管理员激活账号！");
            }

        }else {
            return ResultBean.fail("用户名或者密码错误, 请重新输入！");
        }
    }

}
