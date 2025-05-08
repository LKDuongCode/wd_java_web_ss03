<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 08/05/2025
  Time: 08:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  double result = 0;
try {
  double num1 = Double.parseDouble(request.getParameter("n1"));
  double num2 = Double.parseDouble(request.getParameter("n2"));
  result = num1 + num2;
}catch (Exception e){
    System.err.println("Lỗi" + e.getMessage());
}
%>


<form action="hw04.jsp" method="post">
  <input type="number" name="n1" placeholder="first number">
  <input type="number" name="n2" placeholder="second number">
  <button type="submit">cal sum</button>
</form>

<%
  PrintWriter print = response.getWriter();
if(result != 0){
  print.println("<h1>Kết quả: "+result+"</h1>");
}else {
  print.println("<p>Không có kết quả</p>");

}
%>


</body>
</html>
