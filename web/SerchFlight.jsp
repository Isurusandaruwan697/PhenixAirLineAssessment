<%-- 
    Document   : SerchFlight
    Created on : Oct 6, 2022, 11:07:44 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="StaffCss/serch.css" rel="stylesheet" type="text/css"/>

<link href="content/Front.css" rel="stylesheet" type="text/css"/>

    <title>Serch Flights</title>
    </head>
    <body><center><br><br>
        
          <%
        if(session.getAttribute("uname")==null){
            response.sendRedirect("userLogin.jsp");
        }
        
        %>
        
        <div class="container">
            <br><br>
        <form action="Pserch.jsp" class="serch_bar">
            
            <input type="text" name="serch" placeholder="Enter Flight Name">
            <button type="submit"><img src="transparent-png.png"></button>
            
        </form></div>
    </center>
    <%
       

        %>
    </body>
</html>
