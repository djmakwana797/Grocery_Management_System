<%-- 
    Document   : bill
    Created on : 8 Mar, 2021, 11:27:52 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="DAO.DBConnect_JDBC"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%   
            HttpSession httpSession=request.getSession();
            String id=request.getParameter("id");
            String email=request.getParameter("email");
            String status="Cancel";
            
            try {
                Connection conn = DBConnect_JDBC.getConnection();
                Statement st = conn.createStatement();
                st.executeUpdate("update cart set status='"+status+"' where p_id='"+id+"' and email='"+email+"' and address is not NULL");
                httpSession.setAttribute("message", "Order Cancel Successfully");
                response.sendRedirect("received_orders.jsp");   
                
            }catch (Exception ex) {
                        out.println(ex.getMessage());
                    }
                %>

