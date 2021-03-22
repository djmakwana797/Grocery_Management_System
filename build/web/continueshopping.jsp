<%-- 
    Document   : continueshopping
    Created on : 9 Mar, 2021, 9:51:54 AM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="Pojo.Cart"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="DAO.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {
%>
<div style="margin-top: 10px;" class="container">
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String status="processing";
        try {
                    Connection conn = DBConnect_JDBC.getConnection();
                    PreparedStatement ps = conn.prepareStatement("update cart set status=? where email=? and status='bill'");
                    ps.setString(1, status);
                    ps.setString(2, email);
                    ps.executeUpdate();
                    httpSession.setAttribute("message", "Your order has been placed");
                    response.sendRedirect("product.jsp");
        }
                    catch(Exception ex)
                    {
                        out.println(ex.getMessage());
            }
%>
                    
    </body>
</html>
