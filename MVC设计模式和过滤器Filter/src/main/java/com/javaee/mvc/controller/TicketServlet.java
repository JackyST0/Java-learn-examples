package com.javaee.mvc.controller;

import com.javaee.mvc.dao.TicketDao;
import com.javaee.mvc.entity.Ticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;


/**
 * 控制层,实现和前端浏览器的交互。接收前端参数并且调用dao层数据实现相关功能，同时返回视图页面
 */
@WebServlet("/ticket")
public class TicketServlet extends HttpServlet {
    // 数据操作类Dao
    TicketDao ticketDao = new TicketDao();
    // 视图页面文件前缀
    String prefix = "/WEB-INF/view/ticket/";

    // 数据查看和删除操作使用GET请求完成
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
        // action表示用户操作类型
        String action = req.getParameter("action");
        if (action == null || action.equals("")) {
            action = "list";
        }
        switch (action) {
            case"view":
                this.view(req, resp);
                break;
            case"delete":
                this.delete(req, resp);
                break;
            case"list":
                this.listAll(req, resp);
                break;
            case"create":          //跳转到票据添加页面
                this.toCreate(req, resp);
                break;
            case"edit":
                this.toEdit(req, resp);
            default:
                break;
        }
        
    }

    //更新票据
    public void update(HttpServletRequest  req, HttpServletResponse resp) throws ServletException,  IOException {
        //构造ticket对象
        String customerName =  req.getParameter("company");
        double money = Double.parseDouble(req.getParameter("money"));
        String type = req.getParameter("type");
        String title = req.getParameter("title");
        String body = req.getParameter("body");
        Long id =   Long.parseLong(req.getParameter("id"));
        //构造新的票据对象
        Ticket ticket = new Ticket("", customerName,  money, title, body, type);
        ticket.setId(id);
        ticketDao.update(ticket);
        //重定向到list  URL
        resp.sendRedirect("/ticket?action=view&id="+id);
    }

    //查看详情
    public void view(HttpServletRequest  req, HttpServletResponse resp) throws ServletException,  IOException {
        //获取票据id
        long id = Long.parseLong(req.getParameter("id"));
        //调用dao的方法
        Ticket ticket = ticketDao.findById(id);
        req.setAttribute("ticket", ticket);
        req.getRequestDispatcher(prefix + "/view.jsp").forward(req, resp);
    }

    //跳转到添加票据界面
    public void toCreate(HttpServletRequest  req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(prefix + "add.jsp").forward(req, resp);
    }

    private void toEdit(HttpServletRequest  req, HttpServletResponse resp) throws ServletException,  IOException {
        long id = Long.parseLong(req.getParameter("id"));
        req.setAttribute("ticket", ticketDao.findById(id));
        req.getRequestDispatcher(prefix + "edit.jsp").forward(req, resp);
    }

    /**
     *添加票据
     */
    public void create(HttpServletRequest  req, HttpServletResponse resp) throws ServletException,  IOException {
        //构造ticket对象
        String creator = req.getParameter("creator");
        String customerName =  req.getParameter("company");
        double money = Double.parseDouble(req.getParameter("money"));
        String type = req.getParameter("type");
        String title = req.getParameter("title");
        String body = req.getParameter("body");
        Ticket ticket = new Ticket(creator,  customerName, money, title, body, type);
        ticketDao.insert(ticket);
        //重定向到list  URL
        resp.sendRedirect("/ticket");
    }

    // 添加、更新操作使用POST请求
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        switch (action) {
            case"create":
                this.create(req, resp);
                break;
            case"update":
                this.update(req, resp);
            default:
                break;
        }
    }

    // 删除票据
    public void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取票据id
        long id = Long.parseLong(req.getParameter("id"));
        ticketDao.deleteById(id);
        //重定向到list  URL
        resp.sendRedirect("/ticket");
    }

    // 查看票据列表
    public void listAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取票据列表
        List list = ticketDao.findAll();
        req.setAttribute("ticketList", list);
        req.getRequestDispatcher(prefix + "list.jsp").forward(req, resp);
    }
}
