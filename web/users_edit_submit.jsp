<%-- 
    Document   : update_product
    Created on : 13 Mar, 2021, 6:36:12 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            HttpSession httpSession = request.getSession();
            try {
                String user_id = request.getParameter("user_id");
                String userName = request.getParameter("userName");
                String userEmail = request.getParameter("userEmail");
                String userPassword = request.getParameter("userPassword");
                String userPhone = request.getParameter("userPhone");
                String userType = request.getParameter("user_type");
                String userAddress = request.getParameter("userAddress");
                
                
                out.println(user_id);
                out.println(userName);
                out.println(userEmail);
                out.println(userPassword);
                out.println(userPhone);
                out.println(userType);
                out.println(userAddress);

                User user = new User(userName, userEmail, userPassword, userPhone,userType,userAddress);

                user.setUserId(Long.parseLong(user_id));
                user.setUserName(userName);
                user.setUserEmail(userEmail);
                user.setUserPassword(userPassword);
                user.setUserPhone(userPhone);
                user.setUserType(userType);
                user.setUserAddress(userAddress);
                UsersDAO.update(user);
                
                httpSession.setAttribute("user_id", user_id);
                if (userType.equals("Shopkeeper")) {
                    response.sendRedirect("update_user.jsp");
                }
                if (userType.equals("Delivery boy")) {
                    response.sendRedirect("update_user_db.jsp");
                }
                 if (userType.equals("Customer")) {
                    httpSession.setAttribute("cat_add_msg", "User information updated");
                    response.sendRedirect("logout.jsp");
                }
            } catch (Exception e) {
                httpSession.setAttribute("message", "User already registered");
                response.sendRedirect("user_info.jsp");
            }

        %>
    </body>
</html>
