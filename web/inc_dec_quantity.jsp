<%-- 
    Document   : inc_dec_quantity
    Created on : 8 Mar, 2021, 12:59:46 AM
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


<%  HttpSession httpSession = request.getSession();
            String email = (String) session.getAttribute("login_or_not");
            String id=request.getParameter("id");
            String incdec=request.getParameter("quantity");
            long price=0;
            long total=0;
            long quantity=0;
            long final_total=0;
            try
{
        Connection conn = DBConnect_JDBC.getConnection();
        Statement st = conn.createStatement();
        ResultSet rs=st.executeQuery("select * from cart where email='"+email+"' and p_id='"+id+"' and address is NULL");
        while (rs.next()) {

            price=rs.getLong(5);
            total=rs.getLong(6);
            quantity=rs.getLong(4);
        }
        if(quantity==1 && incdec.equals("dec"))
        {
             httpSession.setAttribute("message_invalid", "There is only one quanity! So click on the remove");
             response.sendRedirect("mycart.jsp");
        }
        else if(quantity!=1 && incdec.equals("dec"))
        {
            total=total-price;
            quantity=quantity-1;
            st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email= '"+email+"' and p_id='"+id+"' and address is NULL");
            
            httpSession.setAttribute("message", "Quantity decremented successully");
            response.sendRedirect("mycart.jsp");
        }
        else
        {
            total=total+price;
            quantity=quantity+1;
            st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email= '"+email+"' and p_id='"+id+"' and address is NULL");
            httpSession.setAttribute("message", "Quantity incremented successully");
            response.sendRedirect("mycart.jsp");   
        }
    } catch (Exception ex) {
    }

        %>
        
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
