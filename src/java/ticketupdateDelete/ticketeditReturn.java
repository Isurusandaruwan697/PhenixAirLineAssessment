package ticketupdateDelete;

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

@WebServlet("/ticketeditReturn")
public class ticketeditReturn extends HttpServlet {    
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        String TicID = req.getParameter("id");
        
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dea","root","");
           
           pst = con.prepareStatement("select * from ticketview where TicDI = ?");
           pst.setString(1, TicID);
           rs = pst.executeQuery();
           
           while(rs.next())
           {    
               out.print("<form action='ticketeditServlet' method='POST'");
               out.print("<table>");
               
               out.print("<tr> <td>Ticket ID</td>    <td> <input type='text' name ='TicID' id='TicID' value= '" + rs.getString("TicID") + "'/> <br><br>");
               out.print("<tr> <td>Ticket Class</td>    <td> <input type='text' name ='TicClass' id='TicClass' value= '" + rs.getString("TicClass") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Ticket From</td>    <td> <input type='text' name ='TicFrom' id='TicFrom' value= '" + rs.getString("TicFrom") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Ticket To</td>    <td> <input type='text' name ='TicTo' id='TicTo' value= '" + rs.getString("TicTo") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Ticket Date & Time</td>    <td> <input type='text' name ='TicDT' id='TicDT' value= '" + rs.getString("TicDT") + "'/> </td> </tr> <br><br>");
               out.print("<tr> <td>Ticket Quantty</td>    <td> <input type='text' name ='TicQ' id='TicQ' value= '" + rs.getString("TicQ") + "'/> </td> </tr> <br><br>");
               out.print("<tr>  <td colspan ='2'> <input type='submit'  value= 'Update'/> </td> </tr>");
               out.print("</table>");
               out.print("</form>");
               
               
           }
            
        } catch (ClassNotFoundException ex) {
//            newwwwww
            out.println("<font color='red'>  Record Failed   </font>");
            Logger.getLogger(ticketeditReturn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
 
        }
    }

}