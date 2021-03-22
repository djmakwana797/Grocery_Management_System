<%-- 
    Document   : register_data
    Created on : 13 Feb, 2021, 6:33:51 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="java.util.List"%>
<%@page import="Util.HibernateUtil"%>
<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            String userName = request.getParameter("userName");
            String userEmail = request.getParameter("userEmail");
            String userPassword = request.getParameter("userPassword");
            String userPhone = request.getParameter("userPhone");
            String user_type = request.getParameter("user_type");
            String userAddress = request.getParameter("userAddress");
            
            HttpSession httpSession = request.getSession();
            HttpSession httpSession1 = request.getSession();
            
            User obj = UsersDAO.viewSingle(userEmail);
            if (obj != null) {
                if (userEmail.equals(obj.getUserEmail())) {
                    httpSession.setAttribute("logout_msg", "User already registered");
                    response.sendRedirect("login.jsp");
                } else {
                    //Create a POJO Class Object
                    User bean = new User(userName, userEmail, userPassword, userPhone, user_type, userAddress);

                    //Set the username and Passoword
                    bean.setUserName(userName);
                    bean.setUserEmail(userEmail);
                    bean.setUserPassword(userPassword);
                    bean.setUserPhone(userPhone);
                    bean.setUserType(user_type);
                    bean.setUserAddress(userAddress);

                    //Call the DAO Method
                    new HibernateUtil(HibernateUtil.getSessionFactory());
                    int customerId = (int) UsersDAO.save(bean);
                    httpSession.setAttribute("message", "Registration successfull!.. User ID is: " + customerId);
                    response.sendRedirect("register.jsp");
                }
            } else {
                //Create a POJO Class Object
                    User bean = new User(userName, userEmail, userPassword, userPhone, user_type, userAddress);

                    //Set the username and Passoword
                    bean.setUserName(userName);
                    bean.setUserEmail(userEmail);
                    bean.setUserPassword(userPassword);
                    bean.setUserPhone(userPhone);
                    bean.setUserType(user_type);
                    bean.setUserAddress(userAddress);

                    //Call the DAO Method
                    new HibernateUtil(HibernateUtil.getSessionFactory());
                    int customerId = (int) UsersDAO.save(bean);
                    httpSession.setAttribute("message", "Registration successfull!.. User ID is: " + customerId);
                    response.sendRedirect("register.jsp");
            }
        %>
    </body>
</html>
