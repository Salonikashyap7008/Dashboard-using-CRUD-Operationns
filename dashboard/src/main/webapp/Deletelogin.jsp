<%@ page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkinfosystems", "root", "Saloni@2002");
    
    PreparedStatement pst = con.prepareStatement("delete from login where id=?");
    pst.setString(1, id);
    
    int i = pst.executeUpdate();
    
    if (i > 0) {
        out.println("<html><body><script>alert('Deletion successful!');window.location.href='Fetchdatalogin.jsp';</script></body></html>");
    } else {
        out.println("<html><body><script>alert('Deletion failed!');window.location.href='Fetchdatalogin.jsp';</script></body></html>");
    }

    
%>

