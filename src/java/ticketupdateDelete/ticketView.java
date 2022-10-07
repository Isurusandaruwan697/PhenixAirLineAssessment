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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ticketView")
public class ticketView extends HttpServlet {
    
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
            String TicID = req.getParameter("TicID");
            String TicClass = req.getParameter("TicClass");
            String TicFrom= req.getParameter("TicFrom");
            String TicTo= req.getParameter("TicTo");
            String TicDT= req.getParameter("TicDT");
            String TicQ= req.getParameter("TicQ");
            
            pst = con.prepareStatement("insert into ticketview(TicID,TicClass,TicFrom,TicTo,TicDT,TicQ)values(?,?,?,?,?,?)");
            pst.setString(1, TicID);
            pst.setString(2, TicClass);
            pst.setString(3, TicFrom);
            pst.setString(4, TicTo);
            pst.setString(5, TicDT);
            pst.setString(6, TicQ);
            
            row = pst.executeUpdate();
            
            out.println("<font color='green'>  Record Addedddd   </font>");
 

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ticketView.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
        } 
    }
  
}
