<%@ page import="com.javaee.mvc.entity.Ticket" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>中山领航科技有限公司客服系统</title>
</head>
<body>
<div>
<span style="font-size: 32px; font-weight: bold">领航科技票据系统
</span><span style="float: right">欢迎：  ${LoginUser.username}用户登录 <a href="/logout">注销</a></span>
</div>
<hr>
<h3>票据管理</h3>
<a href="/ticket">查看票据列表</a> <a href="/ticket?action=create">添加新票据</a><br/><br/>

<table border="1" cellspacing="0">
    <tr>
        <th>序号</th>
        <th>票据Id</th>
        <th>企业名称</th>
        <th>总金额</th>
        <th>标题</th>
        <th>类型</th>

        <th>提交时间</th>
        <th>提交者</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${ticketList}" var="ticket" varStatus="s">
        <tr>
            <td>${s.count}</td>
            <td>${ticket.id}</td>
            <td>${ticket.company}</td>
            <td>${ticket.money}</td>
            <td>${ticket.title}</td>
            <td>${ticket.type}</td>

            <td><fmt:formatDate pattern="yyyy-MM-dd  hh:mm:ss"  value="${ticket.createdTime}"/></td>
            <td>${ticket.creator}</td>
            <td>
                <a href="/ticket?action=view&id=${ticket.id}">详情</a>
                <a href="/ticket?action=delete&id=${ticket.id}">删除</a>
                <a href="/ticket?action=edit&id=${ticket.id}">编辑</a>
            </td>

        </tr>
    </c:forEach>
</table>
<hr>
@zsc 电子科技大学中山学院 计算机学院 班级:20计科E班, 学号:202003013025, 姓名:谭健新 <p></p>
</body>
</html>
