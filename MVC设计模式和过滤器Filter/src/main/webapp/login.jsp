<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div>
    <h2>用户登录</h2>

    <div style="color: red">
        <c:if test="${code==0}">用户名或者密码错误，请重新输入!</c:if>
    </div>
    <form action="/login" method="post">

        <label>用户名:</label> <input type="text" name="username" value="admin">
        <p></p>
        <label>密码:</label> <input type="password" name="password" value="123456">
        <p></p>
<%--        <label>角色:</label> <input type="radio" name="role" value="admin">管理员--%>
<%--        <input type="radio" name="role" value="common">普通用户<p></p>--%>
        <input type="submit" value="登录">
    </form>
</div>
</body>
</html>
