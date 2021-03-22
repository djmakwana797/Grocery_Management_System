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
    String login_or_not = (String) session.getAttribute("login_or_not");
    if (login_or_not != null) {
%>
<div style="margin-top: 10px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=login_or_not%></strong></h4>
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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>My Cart</title>
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

    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h2 class="text-white"><%=login_or_not%>'s cart</h2>
                    <nav class="d-flex align-items-center">
                        <a href="index-2.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Cart</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="dashboardNavbar/customer_nav.jsp"/>

    <%String email = (String) session.getAttribute("login_or_not");%>
    <%
        int total = 0;
        int sno = 0;
        try {
            Connection conn = DBConnect_JDBC.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
            while (rs1.next()) {
                total = rs1.getInt(1);
            }

    %>

    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                 <jsp:include page="message.jsp"/>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Product Image</th>
                                <th scope="col">Product name</th>
                                <th scope="col">Shop</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Price</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Total</th>
                                <th scope="col">Action</th>
                            </tr>
                        <%if (total == 0) {%><h3>Products are not selected</h3><%}%>
                        <%
                            ResultSet rs = st.executeQuery("select * from product inner join cart on product.pid=cart.p_id and cart.email='" + email + "' and cart.address is NULL");
                            while (rs.next()) {
                                Shop sh = ShopDAO.getShopId(Long.parseLong(rs.getString(9)));
                                Category ct = CategoryDAO.getCategoryId(Long.parseLong(rs.getString(8)));
                        %>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="images/products/<%=rs.getString(4)%>" style="max-height:170px; max-width: 100%; width:auto" alt="">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                        <div class="media-body">
                                            <p><%=rs.getString(2)%></p>
                                        </div>
                                </td>
                                <td>
                                    <p><%=sh.getShopName()%></p>
                                </td>
                                <td><a href="inc_dec_quantity.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i style="color:#ffc107;" class="fa fa-minus-circle"></i></a> <strong><%=rs.getString(14)%></strong> <a href="inc_dec_quantity.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i style="color:#ffc107;" class="fa fa-plus-circle"></i></a></td>
                                <td>
                                    <h5><i class="fa fa-inr"><%=rs.getString(5)%></i></h5>
                                </td>
                                <td>
                                    <h5><%=rs.getString(6) + "%"%></h5>
                                </td>
                                <td>
                                    <h5><i class="fa fa-inr"><%=rs.getString(16)%></i></h5>
                                </td>
                                <td><a href='removefromcart.jsp?id=<%=rs.getString(1)%>'><button type="button" class="btn btn-danger">Remove</button></a></td>
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                }
                            %>
                    </table>
                    <table style="padding-right: 80px;" class="table">
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <h5>Subtotal</h5>
                                </td>
                                <td>
                                    <h5><i class="fa fa-inr"><%out.println(total);%></i></h5>
                                </td>
                            </tr>
                            <tr class="out_button_area">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="gray_btn" href="product.jsp">Continue Shopping</a>
                                        <a class="primary-btn" href="addressPaymentfororder.jsp">Proceed to checkout</a>
                                    </div>
                                </td>
                            </tr>
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