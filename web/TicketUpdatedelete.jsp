<%-- 
    Document   : FlightUpdatedelete
    Created on : Sep 22, 2022, 12:30:21 PM
    Author     : Pathum Krishantha
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
    
            
         <div class="container">
    <div class="title">Add Tikckets</div>
    <div class="content">
        <form method="POST" action="ticketView">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Ticket ID</span>
            <input type="text" placeholder="Enter ticket ID" name="TicID" required>
          </div>
          <div class="input-box">
            <span class="details">Ticket Class</span>
            <input type="text" placeholder="Enter ticket class" name="TicClass" required>
          </div>
          <div class="input-box">
            <span class="details">Ticket From</span>
            <input type="text" placeholder="Enter ticket from" name="TicFrom" required>
          </div>
          <div class="input-box">
            <span class="details">Ticket To</span>
            <input type="text" placeholder="Enter ticket to" name="TicTo" required>
          </div>
          <div class="input-box">
            <span class="details">Date & Time</span>
            <input type="text" placeholder="Enter date & time" name="TicDT" required>
          </div>
          <div class="input-box">
            <span class="details">Quantity</span>
            <input type="text" placeholder="Enter ticket quantity" name="TicQ" required>
          </div>
        </div>

            
            <input type="submit" value="Add"style="background-color: #0EBABD; border: none; border-radius: 5px; color: #333; /* Dark grey */ padding: 10px 20px; cursor: pointer; text-align: right">
            <input type="reset" value="cansel" style="background-color: #d26a60; border: none; border-radius: 5px; color: #333; /* Dark grey */ padding: 10px 20px; cursor: pointer; text-align: right;">
      
      </form>
        
        <div>
        <a href="ticketUI">
            <button class="button3" style=" height: 70px; width: 100%; border-radius: 5px; border: none; color: #fff; font-size: 18px; font-weight: 500; letter-spacing: 1px; cursor: pointer; transition: all 0.3s ease; background: linear-gradient(135deg, #71b7e6, #9b59b6);">Manage Tickets </button>
        </a>
        </div>
        
      
  </div>
    </div>
        
        
                    </section>

    </body>
</html>
