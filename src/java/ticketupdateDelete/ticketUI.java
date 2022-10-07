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

@WebServlet("/ticketUI")
public class ticketUI extends HttpServlet {
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    /**
     *
     * @param req
     * @param rsp
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        
        out.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">");
        out.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dea","root","");
           
            String sql;
            
            sql = "select * from ticketview";
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            
            out.println("<br><br><br><br><center><table align-text='center' cellspacing='200px' width='1000px' hight='150px' border='1'>");
            out.println("<tr>");
            out.println("<td> <b>Ticket ID</b> </td>");
            out.println("<td> <b>Ticket Class </td>");
            out.println("<td> <b>Ticket From </td>");
            out.println("<td> <b>Ticket To </td>");
            out.println("<td> <b>Ticket Date & Time </td>");
            out.println("<td> <b>Ticket Quentity </td>");
            out.println("<td> <b>Update </td>");
            out.println("<td> <b>Delete </td>");
            
            out.println("</tr>");
            
//            ************


//            ************


            while(rs.next())
            {
             out.println("<tr>");
             out.println("<td>"  + rs.getString("TicID")   +  "</td>");
             out.println("<td>"  + rs.getString("TicClass")   +  "</td>");  
             out.println("<td>"  + rs.getString("TicFrom")   +  "</td>");  
             out.println("<td>"  + rs.getString("TicTo")   +  "</td>");
             out.println("<td>"  + rs.getString("TicDT")   +  "</td>");
             out.println("<td>"  + rs.getString("TicQ")   +  "</td>");
             
             out.println("<td>"  + "<a href='editReturn?id=" +  rs.getString("TicID")  + "'> Update </a>" + "</td>");
             out.println("<td>"  + "<a href='deleteServlet?id=" +  rs.getString("TicID")  + "'> Delete </a>" + "</td>");
             out.println("</tr>");

            }
            
            out.println("</table></center>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ticketUI.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");  
        }
    }  
}