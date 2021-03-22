<%-- 
    Document   : index
    Created on : 5 Feb, 2021, 6:46:11 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Util.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="css/bootstrap_cdn_links.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h1>About Us</h1>
        <%
            out.println(HibernateUtil.getSessionFactory()+"</br>");
            out.println(HibernateUtil.getSessionFactory()+"</br>");
            out.println(HibernateUtil.getSessionFactory());
        %>
    </body>
</html>
