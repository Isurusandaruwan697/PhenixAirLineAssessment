package addFlightstaff2;

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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/flightView")
public class flightView extends HttpServlet {
    
    Connection con;
    PreparedStatement pst;
    int row;
    
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dea","root","");
            String flightID = req.getParameter("flightID");
            String name = req.getParameter("name");
            String Ffrom= req.getParameter("Ffrom");
            String Fto= req.getParameter("Fto");
            String Atime= req.getParameter("Atime");
            String Dtime= req.getParameter("Dtime");
            
            pst = con.prepareStatement("insert into flightview(flightID,name,Ffrom,Fto,Atime,Dtime)values(?,?,?,?,?,?)");
            pst.setString(1, flightID);
            pst.setString(2, name);
            pst.setString(3, Ffrom);
            pst.setString(4, Fto);
            pst.setString(5, Atime);
            pst.setString(6, Dtime);
            
            row = pst.executeUpdate();
            
            out.println("<font color='green'>  Record Addedddd   </font>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(flightView.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
        } 
    }
  
}

