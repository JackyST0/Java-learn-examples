<%@ page import="com.javaee.mvc.entity.Ticket" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>领航科技有限公司客服系统</title>
</head>
<body>
<div>
<span style="font-size: 32px; font-weight: bold">领航科技公司服务系统
</span><span style="float: right">欢迎：${LoginUser.username}用户登录 <a href="/logout">注销</a></span>
</div>
<hr>
<h3>票据管理</h3>
<a href="/ticket">查看票据列表</a> <a href="/ticket?action=create">添加新票据</a><br/><br/>
<h3>票据详情</h3>

    票据Id：${ticket.id}<p>
    创建人：${ticket.creator}  <p>
    企业名称：${ticket.company}  <p>
    总金额：${ticket.money} <p>
    类型：${ticket.type} <p>
    标题：  ${ticket.title}  <p>
    主要内容： ${ticket.body} <p>
    创建时间: <fmt:formatDate pattern="yyyy年MM月dd日 hh:mm:ss"  value="${ticket.createdTime}"/><p>
    更新时间: <fmt:formatDate pattern="yyyy年MM月dd日 hh:mm:ss"  value="${ticket.updatedTime}"/><p>
    <a href="/ticket">返回票据列表</a><br /><br />
<hr>@zsc 电子科技大学中山学院 计算机学院 班级:20计科E班, 学号:202003013025, 姓名:谭健新  <p></p>
</body>
</html>
