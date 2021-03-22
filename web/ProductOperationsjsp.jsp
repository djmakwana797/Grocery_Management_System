<%-- 
    Document   : ProductOperationsjsp
    Created on : 18 Feb, 2021, 3:59:15 PM
    Author     : Dilip J Sarvaiya
--%>


<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.User"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Pojo.Product"%>
<%@page import="Pojo.Shop"%>
<%@page import="DAO.ShopDAO"%>
<%@page import="java.util.List"%>
<%@page import="Util.HibernateUtil"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Pojo.Category"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Operations</title>

    </head>
    <body>
        <!--fetching the category data-->
        <%

            String add_type = request.getParameter("operation");

            if (add_type.trim().equals("addcategory")) {
                //add category
                String title = request.getParameter("catTitle");
                String description = request.getParameter("catDescription");

                //Create a POJO Class Object
                Category category = new Category(title, description);

                //Set the username and Passoword
                category.setCategoryTitle(title);
                category.setCategoryDescription(description);

                new HibernateUtil(HibernateUtil.getSessionFactory());
                int catId = (int) CategoryDAO.save(category);
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("cat_add_msg", "Category added successfully Category Id is: " + catId);
                response.sendRedirect("dashboard.jsp");
            } else if (add_type.trim().equals("addshop")) {
                //add product
                String shop_owner = request.getParameter("shop_owner");
                String shop_email = request.getParameter("shop_email");
                String shop_name = request.getParameter("shop_name");
                String shop_phone = request.getParameter("shop_phone");
                String shop_detail = request.getParameter("shop_detail");
                try {
                    User sh = UsersDAO.viewSingle(shop_email);
                    HttpSession httpSession = request.getSession();
                    if (sh != null) {
                        if (shop_email.trim().equals(sh.getUserEmail())) {
                            //Create a POJO Class Object

                            Shop shop = new Shop(shop_owner, shop_email, sh.getUserPassword(), shop_name, shop_phone, shop_detail);
                            //Set the username and Passoword
                            shop.setShopOwner(shop_owner);
                            shop.setShopName(shop_name);
                            shop.setShopPass(sh.getUserPassword());
                            shop.setShopPhone(shop_phone);
                            shop.setShopDetail(shop_detail);

                            new HibernateUtil(HibernateUtil.getSessionFactory());
                            int shop_id = (int) ShopDAO.save(shop);
                            httpSession.setAttribute("shop_add_msg", "Shop added successfully Shop id is: " + shop_id);
                            response.sendRedirect("dashboard.jsp");
                        } else {
                            httpSession.setAttribute("message_invalid", "Shopkeeper should have registerd first !!");
                            response.sendRedirect("register.jsp");
                        }
                    } else {
                        httpSession.setAttribute("message_invalid", "Shopkeeper should have registerd first !!");
                        response.sendRedirect("register.jsp");
                    }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            } else if (add_type.trim().equals("add_d_boy")) {
                //add product
                String db_name = request.getParameter("db_name");
                String db_email = request.getParameter("db_email");
                String db_pass = request.getParameter("db_pass");
                String db_city = request.getParameter("db_city");
                String db_phone = request.getParameter("db_phone");
                String db_address = request.getParameter("db_address");
                String status = request.getParameter("status");

                try {
                    User sh = UsersDAO.viewSingle(db_email);
                    HttpSession httpSession = request.getSession();
                    if (sh != null) {
                        if (db_email.trim().equals(sh.getUserEmail())) {
                            //Create a POJO Class Object

                            //Create a POJO Class Object
                            DeliveryBoy deliveryBoy = new DeliveryBoy(db_name, db_email, sh.getUserPassword(), db_city, db_phone, db_address, status);
                            //Set the username and Passoword
                            deliveryBoy.setDbName(db_name);
                            deliveryBoy.setDbEmail(db_email);
                            deliveryBoy.setDbPass(sh.getUserPassword());
                            deliveryBoy.setDbCity(db_city);
                            deliveryBoy.setDbPhone(db_phone);
                            deliveryBoy.setDbAddress(db_address);
                            deliveryBoy.setStatus(db_address);

                            new HibernateUtil(HibernateUtil.getSessionFactory());
                            int shop_id = (int) DeliveryboyDAO.save(deliveryBoy);
                            httpSession.setAttribute("shop_add_msg", "Delivery boy added successfully Delivery boy's id: " + shop_id);
                            response.sendRedirect("dashboard.jsp");
                        } else {
                            httpSession.setAttribute("message_invalid", "Delivery boy should have registerd first !!");
                            response.sendRedirect("register.jsp");
                        }
                    } else {
                        httpSession.setAttribute("message_invalid", "Delivery boy should have registerd first !!");
                        response.sendRedirect("register.jsp");
                    }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            }
        %> 
    </body>
</html>
