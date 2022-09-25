<%-- 
    Document   : Registration
    Created on : Sep 21, 2022, 9:29:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
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
.container {
  padding: 19px;
  padding-top: 120px;
  
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
} </style>
    </head>
    <body>
             <form action="" method="post">
  
      <center>
         
  <div class="container">
       <h1>User Registration</h1>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br><br>

    <label for="email"><b>Email&ensp;&ensp;&ensp;</b></label>
    <input type="text" placeholder="Enter Email" name="email" required><br><br>
    
    <label for="Contact"><b>Mobile&ensp;&ensp;</b></label>
    <input type="text" placeholder="Enter Mobile" name="mobile" required><br><br>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>
        
    <button type="submit">Register</button>&ensp;&ensp;<button  type="reset" class="cancelbtn">Cancel</button><br><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me&ensp;&ensp;
    
    </label>
        
  </div>

      </center>
</form>
    </body>
</html>
