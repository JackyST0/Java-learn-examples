package com.javaee.ticketsysv2.web.api;

 
import com.javaee.ticketsysv2.enums.UserStatusEnum;
import com.javaee.ticketsysv2.persistent.entity.User;
import com.javaee.ticketsysv2.service.UserService;
import com.javaee.ticketsysv2.web.bean.ResultVo;
import com.javaee.ticketsysv2.web.dto.user.LoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/05/11
 */
@RestController
public class LoginController {
    @Autowired
    HttpSession session;
    @Autowired
    UserService userService;

    @PostMapping("/login")
    public ResultVo login(@RequestBody LoginDto loginDto) {
        User user = userService.findByUsernameAndPwd(loginDto);
        // 判断账号和密码是否匹配
        if (user != null){
            // 账号被激活
            if (user.getStatus().equals(UserStatusEnum.USER_ACTIVE.getCode())) {
                // 将用户对象存入session
                session.setAttribute("loginUser", user);
                return ResultVo.ok(user);
            }else {
                return ResultVo.fail("用户尚未激活,请联系管理员激活账号！");
            }
        }else {
            return ResultVo.fail("用户名或者密码错误, 请重新输入！");
        }
    }

}
