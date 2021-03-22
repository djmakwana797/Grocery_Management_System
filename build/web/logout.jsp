<%-- 
    Document   : login
    Created on : 13 Feb, 2021, 10:15:36 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
    </head>
    <body>
       <%
                HttpSession httpSession=request.getSession();
                HttpSession httpSession1=request.getSession();
                httpSession.setAttribute("logout_msg", "Logout Successfully !! ");
                httpSession.removeAttribute("login_or_not");
                httpSession.removeAttribute("user_type");
                httpSession1.removeAttribute("login");
                response.sendRedirect("login.jsp");
       %>
    </body>
</html>
