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
import addFlightstaff2.flightView;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editServlet")
public class editServlet extends HttpServlet  {
    
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doPost(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dea","root","");
           
             String flightID = req.getParameter("flightID");
             String name = req.getParameter("name");
             String Ffrom = req.getParameter("Ffrom");
             String Fto = req.getParameter("Fto");
             String Atime = req.getParameter("Atime");
             String Dtime = req.getParameter("Dtime");
             
//             int fl = parseInt(flightID);
//             int At = parseInt(Atime);
//             int Dt = parseInt(Dtime);
//             
             
             
             
             pst = con.prepareStatement("update flightview set name = ?, Ffrom = ?, Fto = ?, Atime = ?, Dtime = ? where flightID = ?");
//             pst = con.prepareStatement("update flightview set name = ? where flightID = ?");
//             pst.setString(1, name);
//             pst.setInt(2,fl);
             
             pst.setString(1, name);
             pst.setString(2, Ffrom);
             pst.setString(3, Fto);
             pst.setString(4, Atime);
             pst.setString(5, Dtime);
             pst.setString(6,flightID);

             row = pst.executeUpdate();
             
              out.println("<font color='green'>  Record Updateeeedd   </font>");
   
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(flightView.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
 
        }

    }
  
}