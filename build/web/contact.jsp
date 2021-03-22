<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {
%>
<div style="margin-top: 140px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=email%></strong></h4>
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
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="assets/css_js_files/bootstrap.min.css" />
        <script src="assets/css_js_files/jquery.min.js"></script>
        <script src="assets/css_js_files/popper.min.js"></script>
        <script src="assets/css_js_files/bootstrap.min.js"></script>
        <link rel="stylesheet" href="assets/css_js_files/style.css"/>
        <script src="assets/js/script.js"></script>
        <%@include file="assets/css/bootstrap_cdn_links.jsp" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
        <title>Contact us</title>
        <style>
                *[role="form"] {
                max-width: 530px;
                padding: 5px;
                margin: 0 auto;
                border-radius: 0.3em;
                background-color: #f2f2f2;
            }

            *[role="form"] h2 { 
                font-family: 'Open Sans' , sans-serif;
                font-size: 40px;
                font-weight: 600;
                color: #000000;
                margin-top: 5%;
                text-align: center;
                text-transform: uppercase;
                letter-spacing: 4px;
            }
            .navbar > .container .navbar-brand, .navbar > .container-fluid .navbar-brand
            {
                margin-left: -15px;
                margin-bottom: 15px;
            }
            </style>
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
                        <li><a href="dashboard.jsp">Dashboard</a></li>
                        <li><a href="product.jsp">Products</a></li>
                        <li><a href="Myorder.jsp">My orders</a></li>
                        <li><a href="contact_us.jsp">Contact Us</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                        <li><a href="mycart.jsp"><i class="fa fa-cart-plus" style="font-size: 20px; color: white;"></i></a></li>

                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
        </header><!-- End Header -->
        
       <div class="container" style="margin-top: 10px;margin-bottom: 20px;">
          
           <form action="contact_data.jsp"  method="post" id="contact_form" class="form-horizontal" role="form">
               
               <%@include file="message.jsp" %>
                <h2>Contact Us</h2>
                <input type="hidden" name="email" value="<%=email%>" />
                <div class="form-group">
                    <label for="subject" class="col-sm-6 control-label">Subject<span style="color: red;">*</span></label>
                    <div class="col-sm-12">
                        <input type="subject" name="subject" id="subject" placeholder="Subject" class="form-control">
                        <p id="p1"></p>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="userAddress" class="col-sm-6 control-label">Address<span style="color: red;">*</span></label>
                    <div class="col-sm-12">
                        <textarea type="text"  name="message" rows="3" id="message" reuired placeholder="Enter your message" class="form-control"></textarea>
                        <p id="p2"></p>
                    </div>
                </div>
               
                <button id="btn" type="submit" class="btn btn-success btn-block">Message</button>
                
            </form> <!-- /form -->
        </div> <!-- ./container -->
    </body>
</html>

