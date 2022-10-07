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

@WebServlet("/ticketeditServlet")
public class ticketeditServlet extends HttpServlet  {
    
    
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
           
             String TicID = req.getParameter("TicID");
             String TicClass = req.getParameter("TicClass");
             String TicFrom = req.getParameter("TicFrom");
             String TicTo = req.getParameter("TicTo");
             String TicDT = req.getParameter("TicDT");
             String TicQ = req.getParameter("TicQ");
             
//             int fl = parseInt(flightID);
//             int At = parseInt(Atime);
//             int Dt = parseInt(Dtime);
//             
             
             
             
             pst = con.prepareStatement("update ticketview set TicClass = ?, TicFrom = ?, TicTo = ?, TicDT = ?, TicQ = ? where TicID = ?");
//             pst = con.prepareStatement("update flightview set name = ? where flightID = ?");
//             pst.setString(1, name);
//             pst.setInt(2,fl);
             
             pst.setString(1, TicClass);
             pst.setString(2, TicFrom);
             pst.setString(3, TicTo);
             pst.setString(4, TicDT);
             pst.setString(5, TicQ);
             pst.setString(6,TicID);

             row = pst.executeUpdate();
             
              out.println("<font color='green'>  Record Updateeeedd   </font>");
   
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ticketView.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
 
        }

    }
  
}