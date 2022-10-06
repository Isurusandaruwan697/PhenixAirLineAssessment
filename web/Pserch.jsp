<%-- 
    Document   : Pserch
    Created on : Oct 6, 2022, 12:09:40 PM
    Author     : User
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       
<link href="content/Front.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         
    <center><br><br>
        <h2><b>Avilable Flights</b> </h2><br>
        <table class="table table-striped" style="width:70%" >
            <tr>
                <th>Flight Id</th>
                <th>Flight Name</th>
                <th>Arival Time</th>
                <th>Depacher Time</th>
                <th>Date</th>  
                <th>From</th>
                <th>To</th>
            </tr>
              <% 
                     try {
                        
                       Class.forName("com.mysql.jdbc.Driver");
                                            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dea?useSSL=false","root","");
                                                       Statement st=con.createStatement();
                                                       String serch=request.getParameter("serch");
                                                        String sql="SELECT * FROM flight WHERE name = '"+serch+"' ";
                                                       ResultSet rs=st.executeQuery(sql);
                                                                while(rs.next()){ %>
                                                                    
                                                                <td><%=rs.getInt("ID")%></td>
                                                                 <td><%=rs.getString("name")%></td>
                                                                 <td><%=rs.getString("Atime")%></td>
                                                                 <td><%=rs.getString("Dtime")%></td>
                                                                 <td><%=rs.getDate("date")%></td>
                                                                 <td><%=rs.getString("from")%></td>
                                                                 <td><%=rs.getString("to")%></td>
                                                                 <td><a href="book">Reserve</a></td>
            </tr>
                                                                <%

                                                                }
                    }
                
                
                catch (Exception e) {
                         
                    }
                
                
                %>
               
            </tr>
        </table
    </center>
    </body>
</html>
