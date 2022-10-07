/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       String email=request.getParameter("username");
       String pass=request.getParameter("psw");
       HttpSession session=request.getSession();
       RequestDispatcher dispatcher=null;
       
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dea?useSSL=false","root","");
            PreparedStatement pst=con.prepareStatement("select * from admin where email=? and pass=?");
            pst.setString(1, email);
            pst.setString(2, pass);
            
             ResultSet rs=pst.executeQuery();
             
              if(rs.next()){
             session.setAttribute("uname",rs.getString("name"));
             dispatcher = request.getRequestDispatcher("admin.jsp");
             
             session.setAttribute("email",rs.getString("email"));
                session.setAttribute("mobile",rs.getString("mobile"));
                 session.setAttribute("pass",rs.getString("pass"));
             
         }else{
             request.setAttribute("status", "failed");
             dispatcher = request.getRequestDispatcher("adminLogin.jsp");
             
         }
               dispatcher.forward(request,response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }

       
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
