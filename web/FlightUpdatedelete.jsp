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
        <title>Staff 2</title>
    </head>
    
    <body>
<!--        <div>
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
        </div>-->
            
            
            
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
<!--                </section>
                
                footer html
           
             
        </div>
           <section>
            <footer>
              <div class="article">
                <div class="left box">
                  <div class="upper">
                    <div class="topic">About us</div>
                    <p>Launched in 2022, peonix airline is an award winning airline with a solid reputation for service, comfort, safety, reliability, and punctuality.</p>
                  </div>

                   contact us division
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

               our service division
                <div class="middle box">
                  <div class="topic">Our Services</div>
                  <div><a href="#">Cargo</a></div>
                  <div><a href="#">Training</a></div>
                  <div><a href="#">Ground Handling</a></div>
                  <div><a href="#">Air Taxi</a></div>
                  <div><a href="#">Global citizenship</a></div>
                  <div><a href="#">business credit cards</a></div>
                subscribe us and social media division
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
                    </section>-->
    </body>
</html>
