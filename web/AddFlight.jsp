<%-- 
    Document   : AddFlight
    Created on : Sep 26, 2022, 11:16:34 PM
    Author     : DESHANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Flight</title>
    </head>
    <body>
        <div>
           <center>
        <form method="POST" action="flightView">
            
           <table width="400px" border="1"

                    <colspan="2"><h1>Add flights</h1>
                    
                       
                    Flight ID
                    <input type="text" name="flightID" id="flightID">
                
                    Flight Name
                    <input type="text" name="name" id="name">
              
                    Flight From</td>
                    <input type="text" name="Ffrom" id="Ffrom">
               <br><br>
                    Flight To
                    <input type="text" name="Fto" id="Fto">
              
               
                    Arrival Time
                    <input type="text" name="Atime" id="Atime">
                
               
                
                    Departure Time
                    <input type="text" name="Dtime" id="Dtime">
                
                <br><br>
                
                    <colspan="2"> <input type="submit" value="submit">
                                     <input type="reset" value="cancel">
               
        </form>
        
        <p><a href="flightUI">View Flights</a></p>
        
        </center>
                
           
            
        </div>
        <footer>
              <div class="article">
                <div class="left box">
                  <div class="upper">
                    <div class="topic">About us</div>
                    <p>Launched in 2022, peonix airline is an award winning airline with a solid reputation for service, comfort, safety, reliability, and punctuality.</p>
                  </div>

                   <!--contact us division-->
                  <div class="lower">
                    <div class="topic">Contact us</div>
                    <div class="phone">
                      <a href="#"><i class="fas fa-phone-volume"></i>+94110012345</a>
                    </div>
                    <div class="email">
                      <a href="#"><i class="fas fa-envelope"></i>peonixairline@gmail.com</a>
                    </div>
                  </div>
                </div>

               <!--our service division-->
                <div class="middle box">
                  <div class="topic">Our Services</div>
                  <div><a href="#">Cargo</a></div>
                  <div><a href="#">Training</a></div>
                  <div><a href="#">Ground Handling</a></div>
                  <div><a href="#">Air Taxi</a></div>
                  <div><a href="#">Global citizenship</a></div>
                  <div><a href="#">business credit cards</a></div>
               <!-- subscribe us and social media division-->
                </div>
                <div class="right box">
                  <div class="topic">Subscribe us</div>
                  <form action="#">
                    <input type="text" placeholder="Enter Your email address">
                    <input type="submit" name="" value="Send">
                    <div class="media-icons">
                      <a href="#"><i class="fab fa-facebook-f"></i></a>
                      <a href="#"><i class="fab fa-instagram"></i></a>
                      <a href="#"><i class="fab fa-twitter"></i></a>
                      <a href="#"><i class="fab fa-youtube"></i></a>
                      <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                  </form>
                </div>
              </div>
              
              </div>
            </footer>
    </body>
</html>
