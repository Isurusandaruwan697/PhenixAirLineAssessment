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
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <link href="StaffCss/update.css" rel="stylesheet" type="text/css"/>
        <title>update user</title>
        <script>
function myFunction() {
  confirm("conform update!");
}
</script>
    </head>
    <body>
        
               <header>
                   <br><br><br><br><br><br>
       </header>
            
        <%
           String nam=(String)session.getAttribute("uname"); 
           String email=(String)session.getAttribute("email");
           String mobile=(String)session.getAttribute("mobile");
           String pass=(String)session.getAttribute("pass");
           %>
           
              <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
               <form action="Updateuser" method="post">
                   
                     <%
        if(session.getAttribute("uname")==null){
            response.sendRedirect("userLogin.jsp");
        }
        
        %>
  
      <center>
         
  <div class="container">
      <div class="regbox box"><br>
          <h2>User Profile Update</h2><br>
    <label for="uname"><b></b></label>
    <input type="text" placeholder="Enter Username" name="uname"  value="${uname}"required>

    <label for="email"><b></b></label>
    <input type="text" placeholder="Enter Email" name="email" value="${email}" required>
    
    <label for="Contact"><b></b></label>
    <input type="text" placeholder="Enter Mobile" name="mobile" value="${mobile}" required>
    
    <label for="psw"><b></b></label>
    <input type="password" placeholder="Enter Password" name="psw" value="${pass}"  required>
        
    <p></p>
    <br>                          
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
