<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 07/05/2025
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    %>

<form action="hw02.jsp" method="post">
    <input type="text" name="name" placeholder="name">
    <input type="text" name="email" placeholder="email">
    <button type="submit" >submit</button>
</form>

<div>
    <h2>result:</h2>
    <p> name:
        <%= name %>
    </p>
    <p> email:
        <%= email%>
    </p>
</div>
</body>
</html>
