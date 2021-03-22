<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Pojo.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Registration Page</title>

    </head>
    <body>
        <%
             HttpSession httpSession=request.getSession();
            long pid=Long.parseLong(request.getParameter("id"));
            Product pd=new Product();
            pd.setPid(pid);
            ProductDAO.delete(pd);
            httpSession.setAttribute("message", "Product has been deleted");
            response.sendRedirect("shop_vise_products.jsp");
           %>
    </body>
</html>

