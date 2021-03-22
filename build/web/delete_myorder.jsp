<%-- 
    Document   : delete_myorder
    Created on : 10 Mar, 2021, 10:35:11 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Pojo.*"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession httpSession=request.getSession();
            String id=request.getParameter("id");
        try {
                Connection conn = DBConnect_JDBC.getConnection();
                Statement st = conn.createStatement();
                st.executeUpdate("delete from cart where order_id='"+id+"'");
                httpSession.setAttribute("message", "Order successfully removed");
                response.sendRedirect("Myorder.jsp");
            }
            catch(Exception ex)
            {
                out.println(ex.getMessage());
            }
        %>
    </body>
</html>
