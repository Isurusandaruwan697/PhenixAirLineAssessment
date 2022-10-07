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
        <title>user Dashbord</title>
        <link href="StaffCss/hover.css" rel="stylesheet" type="text/css"/>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css" integrity="sha384-X8QTME3FCg1DLb58++lPvsjbQoCT9bp3MsUU3grbIny/3ZwUJkRNO8NPW6zqzuW9" crossorigin="anonymous">
    </head>
    <body>
    <center>
        
      
        <h1>Hello <%=session.getAttribute("uname") %></h1></center>
      
         <div class="container">
       <div class="box">
       <div class="icon"><i class="fa fa-user" aria-hidden="true"></i></div>
       <div class="content"><h3><a href="userProfile.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">User</a></h3>
       <p>This documentation describes customizing WordPress by adding PHP code to your theme's functions.php file. </p>
       </div>
       </div>
        
        
            <div class="box">
            <div class="icon">
                <i class="fa fa-user-plus" aria-hidden="true"></i></div>
                <div class="content"><h3><a href=" userUpdate.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">User Profile Update</a></h3>
       <p>This documentation describes customizing WordPress by adding PHP code to your theme's functions.php file.</p>
       </div>
            </div>
           
            <div class="box">
            <div class="icon"><i class="fa fa-search" aria-hidden="true"></i></div>
            <div class="content"><h3><a href="SerchFlight.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">Search Flights</a></h3>
       <p>This documentation describes customizing WordPress by adding PHP code to your theme's functions.php file.</p>
       </div>
            </div>
            <br><br>
            
        <div class="box">
        <div class="icon"><i class="fa fa-ticket" aria-hidden="true"></i></div>
        <div class="content"><h3><a href="viewFlight.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">View All Flights</a></h3>
       <p>This documentation describes customizing WordPress by adding PHP code to your theme's functions.</p>
       </div>
        </div>
        <div class="box">
        <div class="icon"><i class="fa fa-lock" aria-hidden="true"></i></div>
        <div class="content"><h3><a href="seats.jsp"style="text-decoration: none; color: #ffffff; font-weight: bold">Reserve Seats</a> </h3>
       <p>This documentation describes customizing WordPress by adding PHP code to your theme's functions.php file.</p>
       </div>
        </div>
        <div class="box">
            <div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
            <div class="content"><h3><a href="Logout"style="text-decoration: none; color: #ffffff; font-weight: bold">Log Out</a> </h3>
       <p>This documentation describes customizing WordPress by adding PHP code to your theme's functions.php file.</p>
       </div>
        </div>
        </div>
       
        
    </body>
</html>
