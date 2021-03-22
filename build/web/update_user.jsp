<%-- 
    Document   : update_product
    Created on : 13 Mar, 2021, 6:36:12 PM
    Author     : Dilip J Sarvaiya
--%>

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
            String shopkeeper_email = (String) session.getAttribute("shopkeeper_email");
            out.println(user_id);
            out.println(shopkeeper_email);
            
            User user=UsersDAO.viewSingle_by_user_id(Long.parseLong(user_id));
            out.println(user);
            out.println("username "+user.getUserName());
            out.println("email "+user.getUserEmail());
            out.println("password "+user.getUserPassword());
            out.println("phone "+user.getUserPhone());
            out.println("type "+user.getUserType());
            
           Shop sh=ShopDAO.viewSingle(shopkeeper_email);
           out.println(sh);
           
           Shop sh1=new Shop(user.getUserName(),user.getUserEmail(),user.getUserPassword(),user.getUserPhone());
           sh1.setShopId(sh.getShopId());
           sh1.setShopName(sh.getShopName());
           sh1.setShopDetail(sh.getShopDetail());
           ShopDAO.update(sh1);
           httpSession.setAttribute("message", "User information updated");
           response.sendRedirect("logout.jsp");
       
        %>
    </body>
</html>
