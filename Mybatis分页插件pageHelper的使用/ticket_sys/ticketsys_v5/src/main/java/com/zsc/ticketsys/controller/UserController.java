package com.zsc.ticketsys.controller;


import com.github.pagehelper.PageInfo;
import com.zsc.ticketsys.bean.ResponseBean;
import com.zsc.ticketsys.constants.SortBy;
import com.zsc.ticketsys.domain.PageDomain;
import com.zsc.ticketsys.entity.User;
import com.zsc.ticketsys.service.UserService;

import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.transform.Result;
import java.util.Date;
import java.util.List;
import java.util.Map;

/*
  功能说明：管理员用户操作类
  @author：hevean
  @date:2019-12-1
 */
@RestController
@RequestMapping("/admin/user")
@Slf4j
public class UserController extends BaseController {
    @Autowired
    UserService userService;
    //分页显示用户
    @GetMapping("/page")
    public ResponseBean page(@RequestParam(defaultValue = "10") int pageSize,@RequestParam(defaultValue = "1") int pageNum) {
        log.info("分页请求"+pageNum+":"+pageSize);
        PageDomain pageDomain=new PageDomain(pageNum,pageSize,"id",SortBy.DESC);
        PageInfo<User> pageInfo=userService.page(pageDomain);
        return  ResponseBean.success(pageInfo);

    }

    // 添加用户,接收前端传过来的json数据
    @PostMapping("/")
    public ResponseBean insertUser(User user) {
        log.info(user.toString());
        user.setRole(1);
        user.setPassword("123");
        user.setCreateTime(new Date());
        user.setRegisterIp(request.getRemoteAddr());
//        user.setStatus(WebCts.ACTIVE);
        return ResponseBean.fail();
    }

    //使用GET方法获取用户对象
    @GetMapping("/{id}")
    public ResponseBean view(@PathVariable("id") long id) {
        log.info("读取用户信息,id=" + id);
        User user = userService.get(id);
        if (user == null) {
            return ResponseBean.notFound();
        } else {
            return ResponseBean.success(user);
        }
    }

    //删除用户
    @DeleteMapping("/{id}")
    public ResponseBean delete(@PathVariable("id") long id) {
        if (userService.delete(id) != 0) {
            return ResponseBean.success();
        } else {
            return ResponseBean.fail();
        }
    }

    //删除多个用户

    //更新用户
    @PutMapping("/")
    public ResponseBean updateUser(User user) {
        log.info(user.toString());
        //取出原来的用户对象
//        User oriUser = userService.findUser(user.getUserId());
//        oriUser.setPassword(user.getPassword());
//        oriUser.setRole(user.getRole());
//        oriUser.setStatus(user.getStatus());
//        oriUser.setEmail(user.getEmail());
//        if (userService.updateUser(oriUser) == 1) ;
        return ResponseBean.success();
    }


    //修改账号状态
    @PostMapping("/user/{action}/{id}")
    public ResponseBean unactiveUser(@PathVariable("action") String action, @PathVariable("id") long id) {
//        if (action.equals("active"))
//            userService.updateUserStatus(id, WebCts.ACTIVE);
//        else if (action.equals("deactive"))
//            userService.updateUserStatus(id, WebCts.UN_ACTIVE);
//        //传递操作成功的消息
        return ResponseBean.success();
    }
}

