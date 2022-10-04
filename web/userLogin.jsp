<%-- 
    Document   : userLogin
    Created on : Oct 4, 2022, 2:29:05 PM
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
        
         
        
          <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
           <form action="userLogin" method="post">
  <div class="imgcontainer">
    <img src="kisspng.jpg" alt="Avatar" class="avatar">
  </div>
      <center>
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required><br><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>
        
    <button type="submit">Login</button>&ensp;&ensp;<button  type="reset" class="cancelbtn">Cancel</button><br><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me&ensp;&ensp;
     <a href="userReg.jsp">Sign-Up</a>
    </label>
        
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
