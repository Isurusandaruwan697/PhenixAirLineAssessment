package updateDelete;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pathum Krishantha
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editReturn")
public class editReturn extends HttpServlet {    
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        String flightID = req.getParameter("id");
        
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dea","root","");
           
           pst = con.prepareStatement("select * from flightview where flightID = ?");
           pst.setString(1, flightID);
           rs = pst.executeQuery();
           
           while(rs.next())
           {    
               out.print("<center><form action='editServlet' method='POST'");
               out.print("<table>");
               
               out.print("<tr> <td>flightID</td>    <td> <input type='text' name ='flightID' id='flightID' value= '" + rs.getString("flightID") + "'/> <br><br>");
               out.print("<tr> <td>Name</td>    <td> <input type='text' name ='name' id='name' value= '" + rs.getString("name") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Flight From</td>    <td> <input type='text' name ='Ffrom' id='Ffrom' value= '" + rs.getString("Ffrom") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Flight To</td>    <td> <input type='text' name ='Fto' id='Fto' value= '" + rs.getString("Fto") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Arrival Time</td>    <td> <input type='text' name ='Atime' id='Atime' value= '" + rs.getString("Atime") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Departure time</td>    <td> <input type='text' name ='Dtime' id='Dtime' value= '" + rs.getString("Dtime") + "'/> </td> </tr> <br><br>");
               out.print("<tr>  <td colspan ='2'> <input type='submit'  value= 'Update'/> </td> </tr>");
               out.print("</table>");
               out.print("</form><center>");
               
               
           }
            
        } catch (ClassNotFoundException ex) {
//            newwwwww
            out.println("<font color='red'>  Record Failed   </font>");
            Logger.getLogger(editReturn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
 
        }
    }

}