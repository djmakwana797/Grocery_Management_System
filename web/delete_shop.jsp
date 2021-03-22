<%-- 
    Document   : delete_shop
    Created on : 21 Mar, 2021, 10:26:30 AM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.Shop"%>
<%@page import="DAO.ShopDAO"%>
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
            String shop_id=request.getParameter("shop_id");
            out.println(shop_id);
            
            Shop sh=ShopDAO.viewSingle_by_shop_id(Long.parseLong(shop_id));
            sh.setShopId(sh.getShopId());
            ShopDAO.delete(sh);
            httpSession.setAttribute("message", "Shop deleted successfully !!");
            response.sendRedirect("all_shops_for_admin.jsp");
        %>
    </body>
</html>
