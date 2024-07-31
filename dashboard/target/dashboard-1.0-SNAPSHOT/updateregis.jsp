<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
if (request.getParameter("submit")!= null) {
    String id = request.getParameter("id");
    String name = request.getParameter("sname");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String mobile = request.getParameter("mobile");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkinfosystems", "root", "Saloni@2002");
        pst = con.prepareStatement("update regis set stname=?, username=?,password=?,mobile=? where id = ?");
        pst.setString(1, name);
        pst.setString(2, username);
        pst.setString(3,password);
        pst.setString(4, mobile);
        pst.setString(5, id);
        pst.executeUpdate();


%>
<script>
    alert("Record Updated.....");
    
    
    </script>
    <%
        }
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <title> Update Data </title>
        <style>
        body {
            margin: 60px;
            padding: 10px;
            background-color: #7DA2A9;
            height: 100vh;
            overflow: hidden;
            font-family: 'Noto Sans TC', sans-serif;
        }

        .center {
            width: 430px;
            margin: 60px auto;
            position: relative;
        }

        .center .header {
            font-size: 28px;
            font-weight: bold;
            color: white;
            padding: 20px 0 30px 25px;
            background-color: black;
            border-bottom: 1px solid #370e3f;
            border-radius: 5px 5px 0 0;
        }

        .center form {
            position: absolute;
            background: white;
            width: 100%;
            padding: 50px 10px 0 30px;
            box-sizing: border-box;
            border: 1px solid #6d1c7d;
            border-radius: 0 0 5px 5px;
        }

        form input {
            height: 50px;
            width: 90%;
            padding: 0 10px;
            margin: 10px;
            border-radius: 3px;
            border: 1px solid silver;
            font-size: 18px;
            outline: none;
        }

        form input[type="password"] {
            margin-top: 20px;
        }

        form i {
            font-size: 25px;
            color: grey;
            margin: 15px 0 0 -45px;
        }

        i.fa-lock {
            margin-top: 35px;
        }

        form input[type="submit"],
        form input[type="reset"] {
            margin-top: 40px;
            margin-bottom: 40px;
            width: 130px;
            height: 45px;
            color: white;
            cursor: pointer;
            line-height: 45px;
            border-radius: 5px;
            background: black;
        }

        form input[type="submit"]:hover,
        form input[type="reset"]:hover {
            cursor: pointer;
            background: #7DA2A9;
            transition: .5s;
        }

        form a {
            text-decoration: none;
            font-size: 20px;
            color: black;
            padding: 10px;
            font-weight: bold;
        }
    </style>
    </head>
    <body>
        <div class="center">
            <div class="header">
            Update Form
         </div>
          <form action="" method="post">
             <!--         the relevent data should come automatically-->
<%
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkinfosystems", "root", "Saloni@2002");
            String id = request.getParameter("id");
            pst = con.prepareStatement("select * from regis where id = ?");
            
            pst.setString(1, id); 
             rs = pst.executeQuery(); 

          while(rs.next()){
          
 %> 
              
           <input type="text" placeholder="name" name="sname" value="<%=rs.getString("stname")%>" id="sname" required>
            <i class="fa fa-user"></i>
            <input type="text" placeholder="Email or Username" name="username" value="<%=rs.getString("username")%>" id="username" required >
            <i class="far fa-envelope"></i>
            <input  type="password" placeholder="Password" name="password"  value="<%=rs.getString("password")%>" id="password" required>
            <i class="fas fa-lock" ></i>
            <input type="number" placeholder="Mobile number" name="mobile" value="<%=rs.getString("mobile")%>" id="mobile" required>
            <i class="fa fa-phone"></i>
            <% 
                    }

             %>
   

            <input type="submit" value="update" id="submit" name="submit">
           <input type="reset" value="Reset" id="reset" name="reset">
           <a href="fetchdata.jsp">Back</a>
           
         </form>
      </div>
    </body>
</html>
