<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhangli
  Date: 2020-05-14
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="get" method="/findByName">
        <input placeholder="请输入姓名" name="username">
        <input type="submit">
    </form>
<table>
    <tr>
        <th>用户名</th>
        <th>密码</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="row">
        <tr>
            <td>${row.username}</td>
            <td>${row.password}</td>
            <td><a href="./delById?id=${row.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
