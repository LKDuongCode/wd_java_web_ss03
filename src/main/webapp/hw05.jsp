<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 08:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Biểu mẫu đăng kí người dùng</h1>
<form action="hw05.jsp" method="post" onsubmit="return confirm('Bạn có chắc muốn đăng ksi không?');">
  <input type="text" name="username" placeholder="typing username...">
  <input type="text" name="email" placeholder="typing email...">
  <input type="text" name="password" placeholder="typing password...">
  <button type="submit">register</button>
</form>
</body>
</html>
