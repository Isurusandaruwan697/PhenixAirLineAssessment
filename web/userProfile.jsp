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
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>User Profile</title>
                 <link href="StaffCss/profile.css" rel="stylesheet" type="text/css"/>
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
           
                  

    <center><br><br><br>
        <h1>User Profile</h1><br>
      <table class="table table-striped" style="width:70%">
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
  <a href="userUpdate.jsp"class="singn-up">Update Profile</a></li>
</center>
    
    </body>
</html>
