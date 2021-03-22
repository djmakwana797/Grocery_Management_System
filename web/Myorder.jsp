<%-- 
    Document   : order
    Created on : 6 Mar, 2021, 11:12:17 AM
    Author     : Dilip J Sarvaiya
--%>

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

    String email = (String) session.getAttribute("login_or_not");
    String db_charge = (String) session.getAttribute("db_charge");
    String d_boy = (String) session.getAttribute("d_boy");
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
        <style>
            h3
            {
                color: #ff6c00;
                text-align: center;
            }
        </style>
    </style>
</head>
<body>
    <jsp:include page="dashboardNavbar/customer_nav.jsp"/>

    <div style="padding-top: 10px;" class="container-fluid">

        <%@include file="message.jsp" %>
        <table class="table table-hover" width='100%'>
            <h3 class="text-center">My Orders<i class="fa fa-cart-plus"></i></h3>  
            <thead>
                <tr>
                    <th>S.no</th>
                    <th>Product Name</th>
                    <th>Product Image</th>
                    <th>Category</th>
                    <th>Price </th>
                    <th>Quantity</th>
                    <th>Sub total</th>
                    <th>Delivery boy charge</th>
                    <th>Delivery boy name</th>
                    <th>Delivery boy email</th>
                    <th>Delivery boy phone</th>
                    <th>Order date</th>
                    <th>Expected Delivery date</th>
                    <th>Payment Method</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <%                    int sno = 0;
                try {
                    Connection conn = DBConnect_JDBC.getConnection();
                    Statement st = conn.createStatement();
                    ResultSet rs1 = st.executeQuery("select * from cart inner join product where cart.p_id=product.pid and cart.email='" + email + "' and cart.orderDateTime is not NULL");

                    while (rs1.next()) {
                        Category obj = CategoryDAO.getCategoryId(rs1.getLong(25));
                        DeliveryBoy db = DeliveryboyDAO.viewSingle_by_name(d_boy);
                        sno = sno + 1;
            %>
            <tbody>
                <tr>
                    <td><%out.println(sno);%></td>
                    <td><%=rs1.getString(19)%></td>
                    <td><img src="images/products/<%=rs1.getString(21)%>" style="max-height:500px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></td>
                    <td><%=obj.getCategoryTitle()%></td>
                    <td><%=rs1.getString(5)%></td>
                    <td><%=rs1.getString(4)%></td>
                    <td><%out.println(rs1.getString(6));%></td>
                    <td><%out.println(Integer.parseInt(db_charge));%></td>
                    <%
                        DeliveryBoy db1 = DeliveryboyDAO.viewSingle(rs1.getString(17));
                    %>
                    <td><%=db1.getDbName()%></td>
                    <td><%=rs1.getString(17)%></td>

                    <td><%=db1.getDbPhone()%></td>
                    <td><%=rs1.getString(15)%></td>
                    <td><%=rs1.getString(16)%></td>
                    <td><%=rs1.getString(12)%></td>
                    <td><%=rs1.getString(14)%></td>
                    <td><a href="delete_myorder.jsp?id=<%=rs1.getString(1)%>"><button type="button" class="btn btn-danger">Remove</button></a></td>
                </tr>
            </tbody>
            <%
                    }
                } catch (Exception ex) {
                    out.println(ex.getMessage());
                }
            %>

        </table>
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

</body>
</html>
