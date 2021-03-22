<%-- 
    Document   : login_data
    Created on : 14 Feb, 2021, 12:02:36 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.ShopDAO"%>
<%@page import="Pojo.Shop"%>
<%@page import="DAO.UsersDAO"%>
<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page import="Pojo.User"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String user_type = request.getParameter("user_type");
            String userEmail = request.getParameter("userEmail");
            String userPassword = request.getParameter("userPassword");
            HttpSession httpSession = request.getSession();
            HttpSession httpSession1 = request.getSession();

            try {
                if (user_type.trim().equals("Admin")) {
                    User obj = UsersDAO.viewSingle(userEmail);
                    if (obj != null) {
                        if ((userEmail.equals(obj.getUserEmail()) && userPassword.equals(obj.getUserPassword()) && user_type.equals(obj.getUserType()))) {
                            httpSession.setAttribute("login_or_not", userEmail);
                            httpSession1.setAttribute("login", userEmail);
                            httpSession1.setAttribute("user_type", user_type);
                            response.sendRedirect("dashboard.jsp");
                        } else {
                            httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                            response.sendRedirect("login.jsp");
                        }
                    }
                    else
                    {
                       httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                       response.sendRedirect("login.jsp"); 
                    }
                }
                 if (user_type.equals("Customer")) {
                    User obj = UsersDAO.viewSingle(userEmail);
                    if (obj != null) {
                        if ((userEmail.equals(obj.getUserEmail()) && userPassword.equals(obj.getUserPassword()) && user_type.equals(obj.getUserType()))) {
                            httpSession.setAttribute("login_or_not", userEmail);
                            httpSession1.setAttribute("login", userEmail);
                            httpSession1.setAttribute("user_type", user_type);
                            response.sendRedirect("dashboard.jsp");
                        } else {
                            httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                            response.sendRedirect("login.jsp");
                        }
                    }
                    else
                    {
                       httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                       response.sendRedirect("login.jsp"); 
                    }
                }
                 if (user_type.equals("Shopkeeper")) {
                    User obj = UsersDAO.viewSingle(userEmail);
                    if (obj != null) {
                        if ((userEmail.equals(obj.getUserEmail()) && userPassword.equals(obj.getUserPassword()) && user_type.equals(obj.getUserType()))) {
                            httpSession.setAttribute("login_or_not", userEmail);
                            httpSession1.setAttribute("login", userEmail);
                            httpSession1.setAttribute("user_type", user_type);
                            response.sendRedirect("dashboard.jsp");
                        } else {
                            httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                            response.sendRedirect("login.jsp");
                        }
                    }
                    else
                    {
                       httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                       response.sendRedirect("login.jsp"); 
                    }
                }
                 
                if (user_type.equals("Delivery boy")) {
                    User obj = UsersDAO.viewSingle(userEmail);
                    if (obj != null) {
                        if ((userEmail.equals(obj.getUserEmail()) && userPassword.equals(obj.getUserPassword()) && user_type.equals(obj.getUserType()))) {
                            httpSession.setAttribute("login_or_not", userEmail);
                            httpSession1.setAttribute("login", userEmail);
                            httpSession1.setAttribute("user_type", user_type);
                            response.sendRedirect("dashboard.jsp");
                        } else {
                            httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                            response.sendRedirect("login.jsp");
                        }
                        
                    }
                    else
                    {
                       httpSession.setAttribute("message_invalid", "Invalid Details..Try again!");
                       response.sendRedirect("login.jsp"); 
                    }
                }
            } catch (Exception ex) {
                out.println("jjjr");
                out.println(ex.getMessage());
            }
        %>

    </body>
</html>
