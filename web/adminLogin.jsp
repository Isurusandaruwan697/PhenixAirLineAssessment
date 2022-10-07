<%-- 
    Document   : adminLogin
    Created on : Sep 22, 2022, 1:06:43 PM
    Author     : Rahal Abishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
      <link href="StaffCss/user.css" rel="stylesheet" type="text/css"/>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

     
    <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
    
        <label id="icon" class="menu1">
            <i class="fa fa-bars"></i>
        </label>

    </nav>
    
    <div class="center">   
        <img src="user-286.png" class="avatar">
        <h1></h1>
        
   <form action="login" method="post">
  <div class="txt_field">
    <input type="text" placeholder="" name="uname" required>
    <span></span>
     <label for="uname"><b>Admin Email</b></label>
  </div> 
    
   <div class="txt_field">    
    <input type="password" placeholder="" name="psw" required>
    <span></span>
     <label for="psw"><b>Password</b></label>
   </div> 
     
       <input type="submit" value="Log-In">&ensp;
    <label>
     
      <div class="singn-up">
     Let's <a href="newAdmin.jsp">Sign-Up</a>
    </label>
     </div>  
  </div>

      </center>
</form>
             <link rel=" stylesheet" href="alret/dist/sweetalert.css">
        <script>
            var status=document.getElementById("status").value;
            if(status === "failed"){
                alert("wrong user name or password!");
            }
        </script>
    </body>
</html>
