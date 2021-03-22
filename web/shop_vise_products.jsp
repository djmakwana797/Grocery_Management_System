<%-- 
    Document   : order
    Created on : 6 Mar, 2021, 11:12:17 AM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.Product"%>
<%@page import="Pojo.Shop"%>
<%@page import="Pojo.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    try {
        String email = (String) session.getAttribute("login_or_not");
        String db_charge = (String) session.getAttribute("db_charge");
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
        <title>Shop vise products</title>
        <style>
            h3
            {
                color:#ff6c00;
            }
        </style>
    </head>
    <body>
        <jsp:include page="dashboardNavbar/shopkeeper_nav.jsp"/>
        <div style="padding-top: 10px;" class="container-fluid">

            <div class="container mt-3">
                <%@include file="message.jsp" %>
                <table class="table table-hover"  width='100%'>
                    <h3 class="text-center">My Products<i class="fa fa-cart-plus"  color: yellow;"></i></h3>  

                    <thead>
                        <tr>
                            <th>S.no</th>
                            <th>Product Name</th>
                            <th>Product description</th>
                            <th>Product image</th>
                            <th>Product Price</th>
                            <th>Product Discount </th>
                            <th>Product quantity </th>
                            <th>Product category </th>
                            <th>Stock per order</th>

                            <th colspan="2" rowspan="1">Action</th>
                        </tr>
                    </thead>
                    <%                    Shop sh = ShopDAO.viewSingle(email);
                        List<Product> pr = ProductDAO.getAllProductsByShopId(sh.getShopId());
                        int sno = 0;
                        for (Product p : pr) {
                            sno = sno + 1;
                    %>
                    <tbody>
                        <tr>
                            <td><%=sno%></td>
                            <td><%=p.getPname()%></td>
                            <td><%=p.getPdesc()%></td>
                            <td><img src="images/products/<%=p.getPphoto()%>" style="max-height:700px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></td>
                            <td><%=p.getPprice()%></td>
                            <td><%=p.getPdiscount()%></td>
                            <td><%=p.getPquantity()%></td>
                            <%
                                Category cat = CategoryDAO.getCategoryId(p.getCategoryId());
                            %>
                            <td><%=cat.getCategoryTitle()%></td>
                            <td><%=p.getPunit()%></td>
                            <td><a href="edit_product.jsp?id=<%=p.getPid()%>"><button type="button" class="btn btn-primary btn-block">Edit <i class="fa fa-edit"></i></button></a></td>
                            <td><a href="delete_product.jsp?id=<%=p.getPid()%>"><button type="button" class="btn btn-danger btn-block">Delete <i class="fa fa-close"></i></button></a></td>

                            <%}%>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
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
        <!--        <script src="css_js_files/jquery.min.js"></script>-->
        <script src="css_js_files/popper.min.js"></script>
        <%@include file="css/common_models.jsp" %>      
    </body>
</html>
<%} catch (Exception ex) {
        response.sendRedirect("login.jsp");
    }
%>