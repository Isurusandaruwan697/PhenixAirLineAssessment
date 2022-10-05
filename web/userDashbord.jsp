<%-- 
    Document   : userDashbord
    Created on : Oct 4, 2022, 3:30:33 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User Dashbord</h1>
       
        
        
         <%
        if(session.getAttribute("uname")==null){
            response.sendRedirect("userLogin.jsp");
        }
        
        %>
       
        
          <div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Logo</h2>
      <br>
      
       <h2>Hello <%=session.getAttribute("uname") %>
           
          
           </h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="userProfile.jsp">User</a></li>
        <li><a href="userUpdate.jsp">Update Profile</a></li>
        <li><a href="#section3">View Flights</a></li>
        <li><a href="#section3">Reserve Flight</a></li>
        <li><a href="Logout">Log-Out</a></li>
      </ul><br>
    </body>
</html>
