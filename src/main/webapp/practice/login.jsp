<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 07/05/2025
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>LOGIN</p>
<form action="result.jsp" method="post">
  <input type="text" name="username" placeholder="username...">
  <input type="text" name="password" placeholder="password...">
  <input type="number" name="age" placeholder="age...">
  <button type="submit">login</button>
</form>

<% PrintWriter print = response.getWriter();
    String invalidInfo = (String) request.getAttribute("invalid_info");;
    if(invalidInfo != null){
        print.println("<p>" + invalidInfo + "<p>");
    }
%>

</body>
</html>
