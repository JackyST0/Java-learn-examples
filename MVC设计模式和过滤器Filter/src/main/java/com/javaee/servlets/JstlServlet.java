package com.javaee.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * 说明：演示通过Servlet，将数据从控制器传递到视图层,然后在视图层完成数据渲染和展示
 */

@WebServlet("/jstl")
public class JstlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 参数action表示前端操作类型
        String action = req.getParameter("action");
        if (action == null || action.equals("")) {
            action = "list";
        }
        switch (action) {
            //显示用户列表
            case "list":
                req.setAttribute("userList", getUserList()); break;
            // 显示单个用户
            case "view":
                req.setAttribute("user", getUser());
                break;
            default:
                break;
        }
        double score = 65;
        //传递单个变量
        req.setAttribute("score", score);
        // 跳转到视图页面
        String dstUrl = "/view.jsp";
        req.getRequestDispatcher(dstUrl).forward(req, resp);

        
    }

    // 模拟生成用户列表
    public List getUserList() {
        List list = new ArrayList<User>();
        String[] cities = {"广州", "深圳", "上海", "北京"};
        Random rand = new Random();
        for (int i = 0; i < 10; ++i) {
            User user = new User();
            user.setUsername("user0" + i);
            user.setAge(20 + i);
            user.setEmail(user.getUsername() + "@aliyun.com");
            user.setCity(cities[rand.nextInt(cities.length)]);
            list.add(user);
        }
        return list;
    }

    // 模拟生成单个用户
    public User getUser() {
        return new User("李东明", "ldm@qq.com", 22, "深圳");

    }
}
