<%@ page import="com.duong.ss03.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:include page="input.jsp"/>

<hr>

<h2>danh sách tất cả</h2>
<table border="1">
    <tr>
        <th>Name </th>
        <th>Email</th>
        <th>Action</th>
    </tr>
    <%
        List<User> users = (List<User>) application.getAttribute("users");
        if (users != null && !users.isEmpty()) {
            for (User u : users) {
    %>
    <tr>
        <td><%= u.getName() %></td>
        <td><%= u.getEmail() %></td>
        <td>
            <form action="user-servlet" method="post" onsubmit="return confirm('Bạn có chắc muốn xóa không?');">
                <input type="hidden" name="userId" value="<%= u.getId() %>">
                <button type="submit" name="action" value="remove">xóa</button>
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3">Chưa có user nào </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
