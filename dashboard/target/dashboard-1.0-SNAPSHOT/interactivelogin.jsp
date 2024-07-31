

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
     out.print("<h1><center>Login Successful</center></h1>");
      String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.print("<h3>username :" + username +"</h3>");
        out.print("<h3>password :" + password +"</h3>");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkinfosystems", "root", "Saloni@2002");
        Statement stmt = con.createStatement();
        int i = stmt.executeUpdate("insert into login(username,password) values('" + username + "','" + password + "')");
//        response.sendRedirect("view_record.jsp");

        if (i > 0) {   
            out.println("<html><body><script>alert('Login successful!');window.location.href='view_record.jsp';</script></body></html>");
        } else {
            out.println("<html><body><script>alert('Login failed. Please try again.');window.location.href='interactiveloginpage.html';</script></body></html>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println(e);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" >
        <title>JSP Page</title>
    </head>
    <body>
      
    </body>
</html>
