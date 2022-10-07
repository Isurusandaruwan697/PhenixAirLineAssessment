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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ticketdeleteServlet")
public class ticketdeleteServlet extends HttpServlet {
    
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
             pst = con.prepareStatement("delete from ticketview where TicID = ?");
             pst.setString(1, TicID);
             row = pst.executeUpdate();
             
             out.println("<font color='green'>  Record Deletedddddd   </font>");

            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ticketView.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");

        }
    
    
    }
    
}
