<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加票据</title>
</head>
<body>
<div>
    <span style="font-size: 32px; font-weight: bold">领航科技公司服务系统
</span><span style="float: right">欢迎：${LoginUser.username}用户登录 <a href="/logout">注销</a></span>
</div>
<hr>
<h3>票据管理</h3>
<a href="/ticket">查看票据列表</a> <a href="/ticket?action=create">添加新票据</a><br/><br/>

<form method="POST" action="/ticket">
    <fieldset>
        <legend>编辑票据</legend>
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="${ticket.id}">
        添加人： <input type="text" name="creator" value="${ticket.creator}" disabled><br/><br/>
        公司名称: <input type="text" name="company" value="${ticket.company}"><br/><br/>
        票据标题: <input type="text" name="title" value="${ticket.title}"><br/><br/>
        总金额: <input type="text" name="money" value="${ticket.money}"><br/><br/>

        类型: <select name="type">
        <option value="银行汇票" ${ticket.type eq '银行汇票' ? "selected" :""}>银行汇票</option>
        <option value="商业汇票" ${ticket.type eq '商业汇票' ? "selected" :""}>商业汇票</option>
        <option value="商业本票" ${ticket.type eq '商业本票' ? "selected" :""}>商业本票</option>
        <option value="银行本票" ${ticket.type eq '银行本票' ? "selected" :""}>银行本票</option>
        <option value="转帐支票" ${ticket.type eq '转帐支票' ? "selected" :""}>转帐支票</option>
    </select>
        <br/><br/>
        票据内容:<br> <textarea name="body" rows="7" cols="40">${ticket.body}
    </textarea><br/><br/>
        <input type="submit" value="提交"/>
    </fieldset>
</form>
<p>
    <a href="/ticket">返回票据列表</a><br/><br/>
<hr>
@zsc 电子科技大学中山学院 计算机学院 班级:20计科E班, 学号:202003013025, 姓名:谭健新 <p></p>
</body>
</html>