<%-- 
    Document   : userReg
    Created on : Oct 4, 2022, 2:29:57 PM
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
        
              <form action="userReg" method="post">
  
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
      <a href="userLogin.jsp">Sign-In</a>
    </label>
        
  </div>

      </center>
</form>
        
        <link rel=" stylesheet" href="alret/dist/sweetalert.css">
        <script>
            var status=document.getElementById("status").value;
            if(status === "sucuss"){
                alert("registration done!");
            }
        </script>
            
    </body>
</html>
