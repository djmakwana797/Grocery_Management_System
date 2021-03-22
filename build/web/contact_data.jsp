<%-- 
    Document   : contact_data
    Created on : 9 Mar, 2021, 2:28:37 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.OrderDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
    </head>
    <body>
        <%
            HttpSession httpSession=request.getSession();
          String email=request.getParameter("email");
          String subject=request.getParameter("subject");
          String message=request.getParameter("message");
          OrderDetails bean = new OrderDetails(email, subject, message);

                    //Set the username and Passoword
                    bean.setEmail(email);
                    bean.setSubject(subject);
                    bean.setBody(message);
                    //Call the DAO Method
                    UsersDAO.save(bean);
                    httpSession.setAttribute("message", "Message has been sent");
                    response.sendRedirect("contact_us.jsp");                

            %>
            
    </body>
</html>
