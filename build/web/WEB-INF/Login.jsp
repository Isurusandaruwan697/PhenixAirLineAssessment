<%-- 
    Document   : Login
    Created on : Sep 20, 2022, 6:16:11 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
         <style>
          body {font-family: Arial, Helvetica, sans-serif;}


input[type=text], input[type=password] {
  width: 36.5%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 15%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: 15%;
  padding: 14px 20px;
  background-color: #f44336;
  margin: 8px 0;

}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 19px;
  
}




/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}  
    </style>
    </head>
    <body>
        
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
