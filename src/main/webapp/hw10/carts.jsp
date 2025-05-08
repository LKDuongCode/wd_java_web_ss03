<%@ page import="com.duong.ss03.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.duong.ss03.Product_Hw10" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>carts</h2>
<table border="1">
    <tr>
        <th>Name </th>
        <th>Price</th>
        <th>Action</th>
    </tr>
    <%
        List<Product_Hw10> products = (List<Product_Hw10>) application.getAttribute("carts");
        if (products != null && !products.isEmpty()) {
            for (Product_Hw10 p : products) {
    %>
    <tr>
        <td><%= p.getName() %></td>
        <td><%= p.getPrice() %></td>
        <td>
            <form action="user-servlet" method="post" onsubmit=" alert('đã thêm sản phẩm thành công!')">
                <input type="hidden" name="userId" value="<%= p.getId() %>">
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
