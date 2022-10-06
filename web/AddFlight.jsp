<%-- 
    Document   : AddFlight
    Created on : Sep 26, 2022, 11:16:34 PM
    Author     : DESHANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Staff2CSS/style.css">
        <title>Staff 1</title>
    </head>
    
    <body>

                <!--staff 2 add flight form html-->
                
                <section>
    
<!--        <form method="POST" action="flightView">-->
            
         <div class="container">
    <div class="title">Add Flights</div>
    <div class="content">
        <form method="POST" action="flightView">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Flight ID</span>
            <input type="text" placeholder="Enter flight ID" name="flightID" required>
          </div>
          <div class="input-box">
            <span class="details">Flight Name</span>
            <input type="text" placeholder="Enter flight name" name="name" required>
          </div>
          <div class="input-box">
            <span class="details">Flight From</span>
            <input type="text" placeholder="Enter flght from" name="Ffrom" required>
          </div>
          <div class="input-box">
            <span class="details">Flight to</span>
            <input type="text" placeholder="Enter flight to" name="Fto" required>
          </div>
          <div class="input-box">
            <span class="details">Arrival Time</span>
            <input type="text" placeholder="Enter arrival time" name="Atime" required>
          </div>
          <div class="input-box">
            <span class="details">Departure Time</span>
            <input type="text" placeholder="Enter departure time" name="Dtime" required>
          </div>
        </div>

           <input type="submit" value="Register"style="background-color: #0EBABD; border: none; border-radius: 5px; color: #333; /* Dark grey */ padding: 10px 20px; cursor: pointer; text-align: right">
           <input type="reset" value="cansel" style="background-color: #d26a60; border: none; border-radius: 5px; color: #333; /* Dark grey */ padding: 10px 20px; cursor: pointer; text-align: right;">
      
      </form>
        
       <div>
        <a href="flightUI">
         <button class="button3" style=" height: 70px; width: 100%; border-radius: 5px; border: none; color: #fff; font-size: 18px; font-weight: 500; letter-spacing: 1px; cursor: pointer; transition: all 0.3s ease; background: linear-gradient(135deg, #71b7e6, #9b59b6);"> View Flights </button>
        </a>
        </div>
        
      
  </div>
    </div>
        
        
                    </section>


    </body>
</html>
