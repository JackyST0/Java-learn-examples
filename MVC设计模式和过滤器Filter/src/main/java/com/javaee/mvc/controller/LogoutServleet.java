package com.javaee.mvc.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 处理用户注销
 */
@WebServlet("/logout")
public class LogoutServleet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 清空session数据，并跳转都登录页页面
        req.getSession().invalidate();
        resp.sendRedirect("/login");
    }
}
