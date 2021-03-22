<%-- 
    Document   : delete_messages
    Created on : 9 Mar, 2021, 5:47:51 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.OrderDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <%
            HttpSession httpSession=request.getSession();
            long id = Long.parseLong(request.getParameter("id"));
          
                OrderDetails bean = new OrderDetails();
                bean.setOrderDetailsId(id);
                UsersDAO.delete_msg(bean);
                httpSession.setAttribute("message", "Message deleted!");
                response.sendRedirect("view_messages.jsp");
           
        %>

    </body>
</html>
