<%-- 
    Document   : update_product
    Created on : 13 Mar, 2021, 6:36:12 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="Pojo.Shop"%>
<%@page import="DAO.ShopDAO"%>
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
            String user_id = (String) session.getAttribute("user_id");
            String db_email = (String) session.getAttribute("db_email");
            
            User user=UsersDAO.viewSingle_by_user_id(Long.parseLong(user_id));
//            
//            out.println("username "+user.getUserName());
//            out.println("email "+user.getUserEmail());
//            out.println("password "+user.getUserPassword());
//            out.println("phone "+user.getUserPhone());
//            out.println("type "+user.getUserType());
            
           DeliveryBoy sh=DeliveryboyDAO.viewSingle(db_email);
         //  String dbEmail, String dbPass, String dbName, String dbCity, String dbPhone, String dbAddress,String status
           DeliveryBoy sh1=new DeliveryBoy(user.getUserEmail(),user.getUserPassword(),user.getUserName(),sh.getDbCity(),user.getUserPhone(),user.getUserAddress(),user.getUserType());
           sh1.setDbId(sh.getDbId());
           sh1.setDbEmail(user.getUserEmail());
           sh1.setDbPass(user.getUserPassword());
           sh1.setDbName(user.getUserName());
           sh1.setDbCity(sh.getDbCity());
           sh1.setDbPhone(user.getUserPhone());
           sh1.setDbAddress(user.getUserAddress());
           sh1.setStatus(sh.getStatus());
           DeliveryboyDAO.update(sh1);
           httpSession.setAttribute("message", "User information updated");
           response.sendRedirect("logout.jsp");
       
        %>
    </body>
</html>
