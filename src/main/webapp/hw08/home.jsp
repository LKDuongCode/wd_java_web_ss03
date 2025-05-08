<%@ page import="com.duong.ss03.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 09:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>quản lí thư viện sách</h1>
<form action="book-servlet" method="post">
  <input type="text" name="b_name" placeholder="book name...">
  <input type="text" name="b_auth" placeholder="author...">
  <input type="number" name="b_public" placeholder="public year...">
  <button type="submit" name="action" value="add">add new book</button>
</form>

<form action="book-servlet" method="post">
    <input type="text" name="search_value" placeholder="search...">
    <button type="submit" name="action" value="search">search</button>
</form>
<h2>danh sách phù hợp</h2>
<table border="1">
    <tr>
        <th>Tên sách</th>
        <th>Tác giả</th>
        <th>Năm xuất bản</th>
    </tr>
    <%
        List<Book> searchs = (List<Book>) application.getAttribute("search_books");
        if (searchs != null && !searchs.isEmpty()) {
            for (Book b : searchs) {
    %>
    <tr>
        <td><%= b.getName() %></td>
        <td><%= b.getAuthor() %></td>
        <td><%= b.getPublicYear() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3">không thấy </td>
    </tr>
    <%
        }
    %>
</table>
<hr>
<h2>danh sách tất cả</h2>
<table border="1">
    <tr>
        <th>Tên sách</th>
        <th>Tác giả</th>
        <th>Năm xuất bản</th>
    </tr>
    <%
        List<Book> books = (List<Book>) application.getAttribute("books");
        if (books != null && !books.isEmpty()) {
            for (Book b : books) {
    %>
    <tr>
        <td><%= b.getName() %></td>
        <td><%= b.getAuthor() %></td>
        <td><%= b.getPublicYear() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3">Chưa có sách nào </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
