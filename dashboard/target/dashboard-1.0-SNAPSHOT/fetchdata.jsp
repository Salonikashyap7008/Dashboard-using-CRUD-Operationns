

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
if (request.getParameter("submit") != null) {
    String name = request.getParameter("sname");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String mobile = request.getParameter("mobile");

           Connection con;
            PreparedStatement pst;
            ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkinfosystems", "root", "Saloni@2002");
         pst = con.prepareStatement("INSERT INTO regis (stname, username, password, mobile) VALUES (?, ?, ?, ?)");

        pst.setString(1, name);
        pst.setString(2, username);
        pst.setString(3, password);
        pst.setString(4, mobile);
        pst.executeUpdate();


%>
<script>
    alert("record inserted");
    
    
    </script>
    <%
        }
%>
    



<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Record</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #7DA2A9;
            height: 100vh;
            font-family: 'Noto Sans TC', sans-serif;
        }

        table {
            width: 40%;
            background-color: white;
            justify-items: center;
            margin-top: 20px;
        }

        thead tr {
            border: 2px solid black;
            padding: 5px;
        }

        tbody td {
            border: 2px solid black;
            padding: 5px;
        }
    </style>
</head>
<body>
    <form action="fetchdata.jsp" method="post"></form>
    <h2 align="Center">Student Records <BR><br>
    <a href="" class="btn btn-info">New Registration</a></h2>
    <table border="1" align="center" id="tbl-student">
        <thead>
            <tr>
                <th>Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Mobile</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            
             
            <%
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            
           Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkinfosystems", "root", "Saloni@2002");
            String query="select * from regis";
             Statement st=con.createStatement();
             rs=st.executeQuery(query);
           while(rs.next()){
           String id=rs.getString("id");
               
            
      %>
             
             </thead>
        <tbody> 
       
        
            <tr>
                <!-- Fetching values and displaying -->
                <td><%=rs.getString("stname")%></td>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("password")%></td>
                <td><%=rs.getString("mobile")%></td>
                <td><div class="card" style="width:5rem;"><a href="updateregis.jsp?id=<%=id%>" class="btn btn-success">Edit</a></div></td>
                <td><div class="card" style="width:5rem;"><a href="DeleteRegis.jsp?id=<%=id%>" class="btn btn-danger">Delete</a></div></td>
            </tr>
            <%
                }
             %>
           
         </tbody>
    </table>
</body>
</html>


