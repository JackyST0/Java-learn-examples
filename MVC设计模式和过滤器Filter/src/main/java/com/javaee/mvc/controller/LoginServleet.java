package com.javaee.mvc.controller;

import com.javaee.servlets.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 处理用户登录
 */
@WebServlet("/login")
public class LoginServleet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取前端参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        // 登录用户合法性
       if (username != null && !username.isEmpty() && password != null && !password.isEmpty()){
           if ("admin".equals(username) && "123456".equals(password)){
               //构造用户对象
               User user = new User(username,password);
               //用户对象存入session，跳转到票据页面
               req.getSession().setAttribute("LoginUser",user);
               resp.sendRedirect("/ticket");
           }else{
               //返回错误消息给前端
               req.setAttribute("code","0");
               req.getRequestDispatcher("/login.jsp").forward(req,resp);
           }
       }

    }
}
