<%-- 
    Document   : newAdmin
    Created on : Oct 7, 2022, 5:29:41 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="StaffCss/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
        
         
          <div class="container">
            <div class="regbox box">
                <img class="avatar" src="StaffImg/RegLogo.png">
         
              <form action="adminReg" method="post">
         
  
       <h1>User Registration</h1>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="" name="uname" required>

    <label for="email"><b>Email&ensp;&ensp;&ensp;</b></label>
    <input type="text" placeholder="" name="email" required>
    
    <label for="Contact"><b>Mobile&ensp;&ensp;</b></label>
    <input type="text" placeholder="" name="mobile" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="" name="psw" required>
        
     <input type="submit" value="Register">
                   
                 <a href="userLogin.jsp">Already have Account?</a>
       
</form>
            </div>
          </div>
        
        <link rel=" stylesheet" href="alret/dist/sweetalert.css">
        <script>
            var status=document.getElementById("status").value;
            if(status === "sucuss"){
                alert("registration done!");
            }
        </script>
    </body>
</html>
