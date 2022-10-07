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

@WebServlet("/flightUI")
public class flightUI extends HttpServlet {
    
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
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dea","root","");
           
            String sql;
            
            sql = "select * from flightview";
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            
            out.println("<table cellspacing='0' width='350px' border='1'>");
            out.println("<tr>");
            out.println("<td> flightID </td>");
            out.println("<td> name </td>");
            out.println("<td> Ffrom </td>");
            out.println("<td> Fto </td>");
            out.println("<td> Atime </td>");
            out.println("<td> Dtime </td>");
            out.println("<td> Update </td>");
            out.println("<td> Delete </td>");
            
            out.println("</tr>");
            
            while(rs.next())
            {
             out.println("<tr>");
             out.println("<td>"  + rs.getString("flightID")   +  "</td>");
             out.println("<td>"  + rs.getString("name")   +  "</td>");  
             out.println("<td>"  + rs.getString("Ffrom")   +  "</td>");  
             out.println("<td>"  + rs.getString("Fto")   +  "</td>");
             out.println("<td>"  + rs.getString("Atime")   +  "</td>");
             out.println("<td>"  + rs.getString("Dtime")   +  "</td>");
             
             out.println("<td>"  + "<a href='editReturn?id=" +  rs.getString("flightID")  + "'> Update </a>" + "</td>");
             out.println("<td>"  + "<a href='deleteServlet?id=" +  rs.getString("flightID")  + "'> Delete </a>" + "</td>");
             out.println("</tr>");

            }
            
            out.println("</table>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(flightUI.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");  
        }
    }  
}