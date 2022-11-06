package com.example.webcore.controller;


import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 说明：演示获取web前端的参数方式
 */
@RestController
@RequestMapping("/param")
public class ParameterController {
    /**
     * 获取普通参数
     */
    @GetMapping("/query1")
    public String queryUser1(@RequestParam Long id,@RequestParam String name,@RequestParam Integer age){
        return "客户端传递参数为:id=" + id + ",name=" + name + ",age=" +age;
    }

    /**
     * 获取普通参数,允许为空,并且使用默认值
     */
    @GetMapping("query2")
    public String queryUser2(@RequestParam(required = false,defaultValue = "1000") Long id,@RequestParam(required = false) String name,@RequestParam(required = false) Integer age){
        return "客户端传递参数为:id=" + id + ",name=" + name + ",age=" +age;
    }

    /**
     * 获取路径变量
     */
    @GetMapping("/user/{id}")
    public String getUser(@PathVariable Long id){
        return "查询用户id为" + id;
    }

    /**
     * 获取POJO对象数据,数据类型为application/x-www-form-urlencoded
     * @return
     */
    @PostMapping("/user/add")
    public User addUser(User user){
        System.out.println("用户信息为:" + user);
        return user;
    }

    @PostMapping("/user/add1")
    public String addUser(@RequestParam Long id,@RequestParam String name,@RequestParam Integer age){
        return "客户端传递参数为:id=" + id + ",name=" + name + ",age=" +age;
    }

    /**
     * 获取Http头部字段
     */
     @GetMapping("/header")
     @ResponseBody
    public String getHeader(@RequestHeader("User-Agent") String agent, @RequestHeader(name = "Accept") String accept, @RequestHeader(name = "Referer",required = false) String referer, @CookieValue(name = "JSESSIONID",required = false) String sessionId, HttpServletRequest request){
         String remoteAddress = request.getRemoteAddr();
         String info = "客户端浏览器信息:" + agent + ",客户端IP地址:" + remoteAddress + ";referer:" + (referer!=null?referer:"不存在") + ";sessionId:" + (sessionId!=null?sessionId:"不存在");
         return info;
     }

    /**
     * 设置并获取session数据
     */
    @GetMapping("session")
    public String getSessionData(HttpSession session){
        session.setAttribute("username","应归去");
        String username = (String) session.getAttribute("username");
        return "session的属性username:" + username;
    }

}
