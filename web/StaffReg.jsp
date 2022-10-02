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
        <title>JSP Page</title>
    </head>
    <body>
        <a href="StaffReg.jsp">Go for Register</a>
       <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/collaboration.png">
                <h1>Register Account</h1>
                <form action="RegisterServlet" method="post">
                   <p>Username</p>
                    <input type="text" placeholder="Your Username" name="name" required>
                    
                   <p>Useremail</p>
                   <input type="text" placeholder="Your Useremail" name="email" required>
                   
                   <p>Password</p>
                   <input type="password" placeholder="Your Password" name="password" required>
                   
                   
                   <p>Confirm Password</p>
                   <input type="password" placeholder="Repeat your password" name="re_pass" id="re_pass"required>
                   
                   <P>Staff Category</p>
                   <select name-"Staff Category">
                           <option value="">--Select--</option>
                       <option value="Grade One Staff">Grade One Staff</option>
                       <option value="Grade Two Staff">Grade Two Staff</option>
           
                   
                <input type="submit" value="Register">
                   
                 <a href="index.jsp">Already have Account?</a>
                </form>
</div>
</div>

       
    </body>
</html>
