<%-- 
    Document   : userProfile
    Created on : Oct 5, 2022, 11:22:26 AM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
           <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
         <%
        if(session.getAttribute("uname")==null){
            response.sendRedirect("userLogin.jsp");
        }
        
        %>
        <%
           String nam=(String)session.getAttribute("uname"); 
           String email=(String)session.getAttribute("email");
           String mobile=(String)session.getAttribute("mobile");
           String pass=(String)session.getAttribute("pass");
           %>
           
                  

    <center>
        <h1>User Profile</h1>
      <table border="1">
  <tr>
    <td>Name:</td>
    <td><%=nam%>
</td>
  </tr>
  <tr>
    <td>Email</td>
    <td><%=email%></td>
  </tr>
  <tr>
    <td>Mobile</td>
    <td><%=mobile%></td>
  </tr>
  <tr>
    <td>Password</td>
    <td><%=pass%></td>
  </tr>
</table>  
</center>
    <a href="userUpdate.jsp">Update Profile</a></li>
    </body>
</html>
