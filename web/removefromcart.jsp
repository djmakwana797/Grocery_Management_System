<%-- 
    Document   : removefromcart
    Created on : 8 Mar, 2021, 1:09:26 AM
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

<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    String product_id = request.getParameter("id");
    if (email != null) {
%>
<div style="margin-top: 140px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=email%></strong></h4>
        </div>
    </div>
</div>
<%
} else {
%>
<%
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove from cart</title>
    </head>
    <body>
        <%
            try {
                Connection conn = DBConnect_JDBC.getConnection();
                Statement st = conn.createStatement();
                st.executeUpdate("delete from cart where email='"+email+"' and p_id='"+product_id+"' and address is NULL");
                httpSession.setAttribute("message", "Product successfully removed");
                response.sendRedirect("mycart.jsp");
            }
            catch(Exception ex)
            {
                
            }
        %>
    </body>
</html>
