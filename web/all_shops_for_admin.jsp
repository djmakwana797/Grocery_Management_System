<%-- 
    Document   : addtocard
    Created on : Feb 26, 2021, 10:16:46 AM
    Author     : Admin
--%>
<%@page import="Pojo.Category"%>
<%@page import="Pojo.Shop"%>
<%@page import="Pojo.Cart"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="DAO.*"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {
%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1><%=email%></h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                    <a href="dashboard.jsp">Dashboard</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<div class="container mt-4">
    <div class="row">
        <div class="col-md-6 col-sm-8">
            <a href="user_info.jsp"><button class="btn btn-success">View profile</button></a>
        </div>
    </div>
</div>
<%
    } else {
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>All shops</title>
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/ion.rangeSlider.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/main.css">
       
        <style>
            h3
            {
                color: #ff6c00;
                text-align: center;
            }
        </style>
    </head>
    <body>

    <jsp:include page="dashboardNavbar/customer_nav.jsp"/>

    <%
        List <Shop> sh=ShopDAO.viewAll();
        
        %>
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                 <jsp:include page="message.jsp"/>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Shop owner</th>
                                <th scope="col">Shopkeeper email</th>
                                <th scope="col">Shop name</th>
                                <th scope="col">Shop phone</th>
                                <th scope="col">Shop detail</th>
                                <th colspan="2" scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            for(Shop s: sh)
                            {%>
                            <tr>
                                <td><%=s.getShopOwner()%></td>
                                <td><%=s.getShopEmail()%></td>
                                <td><%=s.getShopName()%></td>
                                <td><%=s.getShopPhone()%></td>
                                <td><%=s.getShopDetail()%></td>
                                <td><a href='edit_shop.jsp?shop_id=<%=s.getShopId()%>'><button type="button" class="btn btn-primary">Edit <i class="fa fa-edit"></i></button></a></td>
                                <td><a href=delete_shop.jsp?shop_id=<%=s.getShopId()%>><button type="button" class="btn btn-danger btn-block">Remove shop <i class="fa fa-close"></i></button></a></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp"/>
    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="js/gmaps.min.js"></script>
    <script src="js/main.js"></script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'UA-23581568-13');
    </script>
    <script defer src="../../../static.cloudflareinsights.com/beacon.min.js"
    data-cf-beacon='{"version":"2021.2.0","si":10,"rayId":"62fb204e0dc00fce"}'></script>

</body>
</html>