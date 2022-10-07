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
       <p>The user can acess the user dashboard through the user profile </p>
       </div>
       </div>
        
        
            <div class="box">
            <div class="icon">
                <i class="fa fa-id-card" aria-hidden="true"></i></div>
                <div class="content"><h3><a href=" staff1.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">Staff 1</a></h3>
       <p>Staff 1 can update, delete details of flights</p>
       </div>
            </div>
           
            <div class="box">
            <div class="icon"><i class="fa fa-id-card-o" aria-hidden="true"></i></div>
            <div class="content"><h3><a href="staff2.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">Staff 2</a></h3>
       <p>Staff 2 can add the details of flights and view the details</p>
       </div>
            </div>
            <br><br>
            
        <div class="box">
        <div class="icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></div>
        <div class="content"><h3><a href="newadmin.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">New Admin</a></h3>
       <p>Through the New Admin option admin can add new admin,user and admin can monitor every activity of the staff and users</p>
       </div>
        </div>
        <div class="box">
        <div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
        <div class="content"><h3><a href="veiwFlight.jsp" style="text-decoration: none; color: #ffffff; font-weight: bold">View Flight</a> </h3>
       <p>Admin can access all the flight details through the veiw flight.</p>
       </div>
        </div>
        <div class="box">
            <div class="icon"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
            <div class="content"><h3><a href="SerchFlight.jsp"style="text-decoration: none; color: #ffffff; font-weight: bold">Search Flight</a> </h3>
       <p>Admin can access search flight details through the search flight option.</p>
       </div>
        </div>
        </div>
       
        
    </body>
</html>

