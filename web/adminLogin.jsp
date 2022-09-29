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
    <div class="login">    
    <form id="login" method="get" action="login.php">    
        <label><b>User Name     
        </b>    
        </label>    
        <input type="text" name="Uname" id="Uname" placeholder="Username">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="Pass" id="Pass" placeholder="Password">    
        <br><br>    
        <input type="button" name="log" id="log" value="Log In">       
        <input type="reset" name="cancel" id="cancel" value="Cancel">   
            
    </form>     
</div>    
    </body>
</html>
