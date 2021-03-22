<%-- 
    Document   : checkout
    Created on : 26 Feb, 2021, 10:23:18 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page import="Pojo.User"%>
<%@page import="DAO.UsersDAO"%>
<%@page isErrorPage="true" %>
<%
    HttpSession httpSession = request.getSession();
    String login = (String) session.getAttribute("login");
    if (login != null) {
%>

<div style="margin-top: 140px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=login%></strong></h4>
        </div>

    </div>
</div>
<%
} else {
%>
<%
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="assets/css_js_files/bootstrap.min.css" />
        <script src="assets/css_js_files/popper.min.js"></script>
        <script src="assets/css_js_files/jquery.min.js"></script>
        <script src="assets/css_js_files/bootstrap.min.js"></script>
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css_js_files/style.css" />
        <script src="assets/js/script.js"></script>
        <%@include file="assets/css/bootstrap_cdn_links.jsp" %>
    </head>

    <title>Checkout</title>
</head>
<body>
    <header id="header">
        <div class="container">

            <div id="logo" class="pull-left">
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt=""></a> -->
                <!-- Uncomment below if you prefer to use a text logo -->
                <h1><a href="index.jsp">Online Kirana Store</a></h1>
            </div>

            <nav id="nav-menu-container">
                <ul id="nav_padding" class="nav-menu">
                    <li class="menu-active"><a href="index.jsp">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="dashboard.jsp">Dashboard</a></li>
                    <li><a href="product.jsp">Products</a></li>
                    <li><a href="#contact">Contact Us</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                    <li><a href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size: 20px; color: white;"></i><span class="ml-1 cart-items" >(0)</span></a></li>

                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
    </header><!-- End Header -->
    <div style="margin-bottom: 20px;" class="container">
        <div class="row mt-3">

            <!--first column-->
            <div class="col-md-6">
                <div class="card">

                    <!--first box-->
                    <div class="card-body text-center">

                        <h3 id="item-header">Your selected order</h3>
                        
                        <div class="cart-body">

                        </div>
                    </div>
                </div>
            </div>

            <!--second column-->
            <div class="col-md-6">
                <div class="card">

                    <!--second box-->
                    <div class="card-body">

                        <h3 id="item-header">Your details for order</h3>

                        <form id="checkout_form" onsubmit="goToCheckout()"  method="post" action="order.jsp">

                            <input type="hidden" name="role" value="checkout" />

                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>

                                <% User user = UsersDAO.viewSingle(login); %>
                                 <input type="hidden" value="<% try {
                                        out.print(user.getUserId());
                                    } catch (Exception ex) {
                                        out.println("wrong");
                                    }%>"  class="form-control" name="userid" id="userid">  
                                 
                                <input type="email" value="<% try {
                                        out.print(user.getUserEmail());
                                    } catch (Exception ex) {
                                        out.println("wrong");
                                    }%>"  class="form-control" name="userEmail" id="userEmail" aria-describedby="emailHelp" placeholder="Enter email" required>
                                <p id="p1"></p>    
                            </div>

                            <div class="form-group">
                                <label for="name">Your Name</label>
                                <input type="text"  value="<% try {
                                        out.print(user.getUserName());
                                    } catch (Exception ex) {
                                        out.println("wrong");
                                    }%>" class="form-control" name="userName" id="userName" aria-describedby="emailHelp" placeholder="Enter name" required>
                                <p id="p2"></p>
                            </div>
                            <div class="form-group">
                                <label for="name">Mobile</label>
                                <input type="text" value="<% try {
                                        out.print(user.getUserPhone());
                                    } catch (Exception ex) {
                                        out.println("wrong");
                                    }%>" class="form-control" name="userPhone" id="userPhone" aria-describedby="emailHelp" placeholder="Enter mobile" required>
                                <p id="p3"></p>
                            </div>

                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Your shipping address</label>
                                <textarea class="form-control"  name="userAddress" id="userAddress" placeholder="Enter address" rows="3" required><% try {
                                        out.print(user.getUserAddress());
                                    } catch (Exception ex) {
                                        out.println("wrong");
                                    }%></textarea>
                                <p id="p4"></p>
                            </div>
                             <%
                                        List<DeliveryBoy> d_boys = DeliveryboyDAO.viewAll();
                                    %>

                                    <div class="form-group">
                                        
                                        <select name="d_boy" class="form-control" id="d_boy" required>
                                            <%
                                                for (DeliveryBoy obj : d_boys) {
                                            %>
                                            <option value="none">Select a delivery boy</option> 
                                            <option value="<%=obj.getDbId()%>"><% try { out.print(obj.getDbName());} catch (Exception ex) {out.println("wrong");
                                    }%></option>
                                            }
                                            <%}%>
                                        </select>
                                        <p id="p5"></p>
                                    </div>

                            <div class="form-group text-center">
                                <input type="submit" class="btn btn-outline-success" value="Order now"/>
                                <button class="btn btn-outline-primary">Continue shopping</button>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="assets/css/common_models.jsp" %>           
</body>
</html>
