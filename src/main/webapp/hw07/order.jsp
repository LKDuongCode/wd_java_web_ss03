<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 09:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/order" method="post">
  <input type="text" name="p_name" placeholder="product name...">
  <input type="text" name="p_quantity" placeholder="product quantity...">
  <input type="text" name="p_price" placeholder="product price...">
  <button type="submit">calculate your order</button>
</form>

<%
    Object total = request.getAttribute("total_order");
    if (total != null) {
%>
<p>Tổng đơn hàng: <%= total %></p>
<%
    }
%>

</body>
</html>
