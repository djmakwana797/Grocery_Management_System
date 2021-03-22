<%-- 
    Document   : edit_shop_submit
    Created on : 22 Mar, 2021, 8:14:51 AM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Util.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
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
        <h1>Hello World!</h1>
        <%
            try
            {
                HttpSession httpSession=request.getSession();
                String shop_id_update = request.getParameter("shop_id_update");
                String shop_name = request.getParameter("shop_name");
                String shop_detail = request.getParameter("shop_detail");
                Shop sh=ShopDAO.viewSingle_by_shop_id(Long.parseLong(shop_id_update));
                out.println(sh);
                //String shopOwner,String shopEmail,String shopPass,String shopName, String shopPhone, String shopDetail
                Shop sh1=new Shop(sh.getShopOwner(),sh.getShopEmail(),sh.getShopPass(),shop_name,sh.getShopPhone(),shop_detail);
                out.println(sh1);
                sh1.setShopId(sh.getShopId());
                sh1.setShopOwner(sh.getShopOwner());
                sh1.setShopEmail(sh.getShopEmail());
                sh1.setShopPass(sh.getShopPass());
                sh1.setShopName(shop_name);
                sh1.setShopPhone(sh.getShopPhone());
                sh1.setShopDetail(shop_detail);
                new HibernateUtil(HibernateUtil.getSessionFactory());
                ShopDAO.update(sh1);
                httpSession.setAttribute("message", "Shop information updated");
                response.sendRedirect("all_shops_for_admin.jsp");
            }catch(Exception e)
            {
                out.println(e.getMessage());
            }
                
                %>
    </body>
</html>
