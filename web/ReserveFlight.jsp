<%-- 
    Document   : ReserveFlight
    Created on : Oct 5, 2022, 11:59:12 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ReseveFlight</title>
    </head>
    <body>
    <center>
               <form action="" method="post">

      
       <h1>Flight Resrvation</h1>
    <label for="uname"><b>Flight-ID </b></label>
    <input type="text" placeholder="Flight Name" name="uname" required>&ensp;

    <label for="email"><b>From</b></label>
    <input type="text" placeholder="Enter From" name="email" required>&ensp;
    
    <label for="Contact"><b>To</b></label>
    <input type="text" placeholder="Enter To" name="mobile" required>&ensp;<br><br>
    
    <label for="psw"><b> Date</b></label>
    <input type="Date" placeholder="2020-12-12" name="from" required>&ensp;
    
    <label for="psw"><b> No-Passengers</b></label>
    <input type="number" placeholder="No-Passengers" name="psw" required>&ensp;
    
    <label for="psw"><b> Type </b></label>
    <select name="type">
  <option value="number 1">1st class</option>
  <option value="number 2">Busness class</option>
  <option value="number 3">Common class</option>
    </select>&ensp;<br><br>
    <center>
    <button type="submit">book flight</button>&ensp;&ensp;<button  type="reset" class="cancelbtn">Cancel</button><br><br>
    </center>
</form>
    </body>
</html>
