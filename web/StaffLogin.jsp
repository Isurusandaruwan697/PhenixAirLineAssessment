<%-- 
    Document   : StaffLogin
    Created on : Sep 26, 2022, 4:46:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Login</title>
    </head>
    <body>
        <h1></h1>
        
        <form action="" method="post">
  <div class="imgcontainer">
    <img src="kisspng.jpg" alt="Avatar" class="avatar">
  </div>
      <center>
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>
        
    <button type="submit">Login</button>&ensp;&ensp;<button  type="reset" class="cancelbtn">Cancel</button><br><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me&ensp;&ensp;
     <a href="#">Sign-Up</a>
    </label>
        
  </div>

      </center>
</form>
    </body>
</html>
