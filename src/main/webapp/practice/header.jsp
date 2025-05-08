<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 07/05/2025
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
<%application.setAttribute("count",0); %>
    <p>Số lần đăng nhập: <%= application.getAttribute("loginCount") %></p>
</header>
</body>
</html>
