<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 07/05/2025
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
try {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    int age = Integer.parseInt(request.getParameter("age"));

    if(!username.equals("admin") && !password.equals("123")){
        request.setAttribute("invalid_info","username or password is wrong!");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }

    application.setAttribute("username",username);
    try {
    Integer count = (Integer) application.getAttribute("loginCount");
    if (count == null) {
        count = 0;
    }
    count++;
    application.setAttribute("loginCount", count);

    }catch (Exception e){
        System.err.println("Lỗi" + e.getMessage());
    }
    if(age >= 18){
        response.sendRedirect("adult.jsp");
    }else {
        response.sendRedirect("child.jsp");
    }
}catch (Exception e){
    System.err.println("Lỗi" + e.getMessage());
}


%>

</body>
</html>
