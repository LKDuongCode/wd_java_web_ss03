<%@ page import="java.util.List" %>
<%@ page import="com.duong.ss03.hw06.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 08:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Product> products = new ArrayList<>();
    products.add(new Product(111,"laptop",1000,"this is laptop win 11",9,true));
    products.add(new Product(221,"iphone",500,"this is iphone win 11",9,true));
    products.add(new Product(332,"mouse",100,"mouse for computer",0,false));

    request.setAttribute("products",products);
%>
<h1>Danh sách sản phẩm</h1>

<%
    List<Product> productList = (List<Product>) request.getAttribute("products");
    for (Product p : productList){
%>
<ul>
    <li>id: <%= p.getId() %></li>
    <li>name: <%= p.getName() %></li>
    <li>price: <%= p.getPrice() %></li>
    <li>des: <%= p.getDes() %></li>
    <li>stock: <%= p.getStock() %></li>
    <li>status: <%= p.isStatus() ? "còn hàng" : "hết hàng" %></li>
</ul>
<br>
<%
    }
%>

%>
</body>
</html>
