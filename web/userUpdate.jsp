<%-- 
    Document   : userUpdate
    Created on : Oct 5, 2022, 2:16:02 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>update user</title>
        <script>
function myFunction() {
  confirm("conform update!");
}
</script>
    </head>
    <body>
            <%
        if(session.getAttribute("uname")==null){
            response.sendRedirect("userLogin.jsp");
        }
        
        %>
        <%
           String nam=(String)session.getAttribute("uname"); 
           String email=(String)session.getAttribute("email");
           String mobile=(String)session.getAttribute("mobile");
           String pass=(String)session.getAttribute("pass");
           %>
           
              <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
               <form action="Updateuser" method="post">
  
      <center>
         
  <div class="container">
      <div class="regbox box">
       <h1>User Registration</h1>
    <label for="uname"><b></b></label>
    <input type="text" placeholder="Enter Username" name="uname"  value="${uname}"required>

    <label for="email"><b></b></label>
    <input type="text" placeholder="Enter Email" name="email" value="${email}" required>
    
    <label for="Contact"><b></b></label>
    <input type="text" placeholder="Enter Mobile" name="mobile" value="${mobile}" required>
    
    <label for="psw"><b></b></label>
    <input type="password" placeholder="Enter Password" name="psw" value="${pass}"  required>
        
    <p></p>
                                       
                <input type="submit" value="Update Profile" onclick="myFunction()">
             
  </div>

      </center>
</form>
     <link rel=" stylesheet" href="alret/dist/sweetalert.css">
        <script>
            var status=document.getElementById("status").value;
            if(status === "sucuss"){
                alert("update done!");
            
    }
    
 
    </body>
</html>
