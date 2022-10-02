<%-- 
    Document   : StaffReg
    Created on : Oct 2, 2022, 10:46:23 AM
    Author     : HP
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
        <a href="StaffReg.jsp"</a>
       <div class="container">
            <div class="regbox box">
                <img class="avatar" src="StaffImg/RegLogo.png">
                <h1>Register Account</h1>
                <form action="RegisterServlet" method="post">
                  
                    <P>Staff Category</p>
                    <select name="Staff Category">
                        <option value=""> --Select--</option>
                        <option value="Grade One Staff">Grade One Staff</option>
                        <option value="Grade Two Staff">Grade Two Staff</option>
                    </select>
                    
                              
                   <p>Username</p>
                   <input type="text" placeholder="Your Username" name="name" required>
                    
                   <p>User Email</p>
                   <input type="text" placeholder="Your User Email" name="email" required>
                   
                   <p>Password</p>
                   <input type="password" placeholder="Your Password" name="password" required>
                   
                   
                   <p>Confirm Password</p>
                   <input type="password" placeholder="Repeat your password" name="re_pass" id="re_pass"required>
                   
                   
           
                   
                <input type="submit" value="Register">
                   
                 <a href="index.jsp">Already have Account?</a>
                </form>
</div>
</div>

       
    </body>
</html>
