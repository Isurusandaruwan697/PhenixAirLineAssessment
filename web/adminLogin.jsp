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
        <style>
            
    body  
    {  
        margin: 0;  
        padding: 0;  
        background-color:#6abadeba;  
        font-family: 'Arial';  
    }  
    .login{  
            width: 382px;  
            overflow: hidden;  
            margin: auto;  
            margin: 20 0 0 450px;  
            padding: 80px;  
            background: #23463f;  
            border-radius: 15px ;  
              
    }  
    h2{  
        text-align: center;  
        color: #277582;  
        padding: 20px;  
    }  
    label{  
        color: #08ffd1;  
        font-size: 17px;  
    }  
    #Uname{  
        width: 300px;  
        height: 30px;  
        border: none;  
        border-radius: 3px;  
        padding-left: 8px;  
    }  
    #Pass{  
        width: 300px;  
        height: 30px;  
        border: none;  
        border-radius: 3px;  
        padding-left: 8px;  
          
    }  
    #log{  
        width: 100px;  
        height: 30px;  
        border: none;  
        border-radius: 17px;  
        padding-left: 7px;  
        color: blue;  
      
      
    }
    #cancel{  
        width: 100px;  
        height: 30px;  
        border: none;  
        border-radius: 17px;  
        padding-left: 7px;  
        color: blue;  
      
      
    }  
 
      

        </style>
    </head>
    <body>
        <h2>Admin Login</h2><br>    
            <div>

 <form action="login" method="post">
  <div class="imgcontainer">
    <img src="kisspng.jpg" alt="Avatar" class="avatar">
  </div>
      <center>
  <div class="container">
    <label for="uname"><b>Admin-Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br><br>

    <label for="psw"><b>Admin-Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>
        
    <button type="submit">Login</button>&ensp;&ensp;<button  type="reset" class="cancelbtn">Cancel</button><br><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me&ensp;&ensp;
     <a href="Registration.jsp">Sign-Up</a>
    </label>
        
  </div>

      </center>
</form>            
        </div>    
    </body>
</html>
