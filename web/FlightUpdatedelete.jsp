<%-- 
    Document   : FlightUpdatedelete
    Created on : Sep 22, 2022, 12:30:21 PM
    Author     : Pathum Krishantha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Staff 2</title>
    </head>
    <body>
        <div>
            <style>
                
                      /*footer css*/
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
  text-decoration: none;
}
footer{
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  background: #111;
}
footer .article{
  max-width: 1350px;
  margin: auto;
  padding: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
footer .article p,a{
  color: #fff;
}
footer .article .box{
  width: 33%;
  transition: all 0.4s ease;
}
footer .article .topic{
  font-size: 22px;
  font-weight: 600;
  color: #fff;
  margin-bottom: 16px;

}
footer .article p{
  text-align: justify;
}
footer .article .lower .topic{
  margin: 24px 0 5px 0;
}
footer .article .lower i{
  padding-right: 16px;
}
footer .article .middle{
  padding-left: 80px;
}
footer .article .middle a{
  line-height: 32px;
}
footer .article .right input[type="text"]{
  height: 45px;
  width: 100%;
  outline: none;
  color: #d9d9d9;
  background: #000;
  border-radius: 5px;
  padding-left: 10px;
  font-size: 17px;
  border: 2px solid #222222;
}
footer .article .right input[type="submit"]{
  height: 42px;
  width: 100%;
  font-size: 18px;
  color: #d9d9d9;
  background: #eb2f06;
  outline: none;
  border-radius: 5px;
  letter-spacing: 1px;
  cursor: pointer;
  margin-top: 12px;
  border: 2px solid #eb2f06;
  transition: all 0.3s ease-in-out;
}
.article .right input[type="submit"]:hover{
  background: none;
  color:  #eb2f06;
}
footer .article .media-icons a{
  font-size: 16px;
  height: 45px;
  width: 45px;
  display: inline-block;
  text-align: center;
  line-height: 43px;
  border-radius: 5px;
  border: 2px solid #222222;
  margin: 30px 5px 0 0;
  transition: all 0.3s ease;
}
.article .media-icons a:hover{
  border-color: #eb2f06;
}
footer .bottom{
  width: 100%;
  text-align: right;
  color: #d9d9d9;
  padding: 0 40px 5px 0;
}
footer .bottom a{
  color: #eb2f06;
}
footer a{
  transition: all 0.3s ease;
}
footer a:hover{
  color: #eb2f06;
}
@media (max-width:1100px) {
  footer .article .middle{
    padding-left: 50px;
  }
}
@media (max-width:950px){
  footer .article .box{
    width: 50%;
  }
  .article .right{
    margin-top: 40px;
  }
}
@media (max-width:560px){
  footer{
    position: relative;
  }
  footer .article .box{
    width: 100%;
    margin-top: 30px;
  }
  footer .article .middle{
    padding-left: 0;
  }
}
            </style>
            
            
            
                <!--staff 2 add flight form html-->
                
         
    <center>
        <form method="POST" action="flightView">
            
           <table width="400px" border="1"

                    <colspan="2"><h1>Add flights</h1>
                    
                        <br><br>
                    Flight ID
                    <input type="text" name="flightID" id="flightID">
                <br><br>
                    Flight Name
                    <input type="text" name="name" id="name">
                <br><br>
                    Flight From</td>
                    <input type="text" name="Ffrom" id="Ffrom">
               <br><br>
                    Flight To
                    <input type="text" name="Fto" id="Fto">
               <br><br>
               
                    Arrival Time
                    <input type="text" name="Atime" id="Atime">
                
                <br><br>
                
                    Departure Time
                    <input type="text" name="Dtime" id="Dtime">
                
                <br><br>
                
                    <colspan="2"> <input type="submit" value="submit">
                                     <input type="reset" value="cancel">
               
        </form>
        
        <p><a href="flightUI">View Flights</a></p>
        
        </center>
                
                
                <!--footer html-->
            
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
        </div>
    </body>
</html>
