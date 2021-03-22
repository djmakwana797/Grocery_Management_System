<%-- 
    Document   : bill
    Created on : 8 Mar, 2021, 11:27:52 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="Pojo.Category"%>
<%@page import="Pojo.User"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");

    if (email != null) {
%>
<div style="margin-top: 10px;" class="container">
    <div class="row">
        <div class="col-md-5 col-sm-8">
            <h4 >Welcome  <font color="ff6c00"><strong><%=email%></strong></font></h4>
        </div>
        <div class="col-md-7 col-sm-8">
        <a href="dashboard.jsp"><button style="margin-bottom: 10px;"  type="button" class="btn btn-light">Go to the Dashboard</button></a>
        </div>
    </div>
</div>
<%
    } else {
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

        <style>
            .borderless td, .borderless th {
                border: none;
            }
        </style>
        <style>
            h3
            {
                color:#ff6c00;
            }
            #row_padding
            {
                padding-bottom:50px;
            }
        </style>

        <title>Received orders</title>
    </head>
    <body style="margin-top: 170px;">
        <jsp:include page="dashboardNavbar/delivery_boy_nav.jsp"/>

        <%            try {
                int total = 0;
                int sno = 0;
                Connection conn = DBConnect_JDBC.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");

                while (rs.next()) {
                    total = rs.getInt(1);
                }
                ResultSet rs2 = st.executeQuery("select * from user inner join cart where cart.email='" + email + "' and cart.status='bill'");

        %>
        <div class="container-fluid"> 

            <%@include file="message.jsp" %>
            <div class="text-center">

                <table class="table table-hover"  width='100%'>
                    <thead>
                        <tr>
                            <th>S.no</th>
                            <th>Customer Email</th>
                            <th>Mobile number</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Discount</th>
                            <th>Price</th>
                            <th>Sub total </th>
                            <th>Address</th>
                            <th>Order date</th>
                            <th>Expected delivery date</th>
                            <th>Payment method</th>
                            <th>Transation Id</th>
                            <th>Status</th>
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>

                    <%     ResultSet rs1 = st.executeQuery("select * from cart inner join product where cart.p_id=product.pid and cart.orderDateTime is not NULL and cart.status='processing' ");
                        int c = 0;
                        while (rs1.next()) {
                            sno = sno + 1;
                            c = c + 1;
                    %>
                    <tbody>    
                        <tr>
                            <%                                Category obj = CategoryDAO.getCategoryId(rs1.getLong(24));
                            %>
                            <td><%out.println(sno);%></td>
                            <td><%=rs1.getString(2)%></td>
                            <td><%=rs1.getString(11)%></td>
                            <td><%=rs1.getString(19)%></td>
                            <td><%=rs1.getString(4)%></td>
                            <td><%=rs1.getString(23)%>%</td>
                            <td><%=rs1.getString(5)%></td>
                            <td><%=rs1.getString(6)%></td>
                            <td><%=rs1.getString(7)%></td>
                            <td><%=rs1.getString(15)%></td>
                            <td><%=rs1.getString(16)%></td> 
                            <td><%=rs1.getString(12)%></td>
                            <td><%=rs1.getString(13)%></td>
                            <td><%=rs1.getString(14)%></td>
                            <td><a href="cancel_order.jsp?id=<%=rs1.getString(3)%>&email=<%=rs1.getString(2)%>&d_boy_email=<%=email%>"><button type="button" class="btn btn-primary btn-block">Cancel order <i class="fa fa-close"></i></button></a></td>
                            <td><a href="delievered_orders.jsp?id=<%=rs1.getString(3)%>&email=<%=rs1.getString(2)%>&d_boy_email=<%=rs1.getString(17)%>"><button type="button" class="btn btn-info">Delivered order <i class="fa fa-cart-plus"></i></button></a></td>
                        </tr>
                    </tbody>
                    <%}
                        if (c == 0) {
                            String d_boy_status = "available";
                            DeliveryBoy db_single = DeliveryboyDAO.viewSingle(email);

                            db_single.setStatus(d_boy_status);
                            DeliveryboyDAO.update(db_single);
                        }
                        if (sno == 0) {
                            out.println("<h3>You have not received any order</h3>");
                        }
                    %>
                </table>
<!--                        <h3 >Total: <%out.println(total);%></h3>
                    <a href="continueshopping.jsp"><button type="button" class="btn text-white btn-outline-warning" ><strong>Continue Shopping</strong></button></a>
                    <a onclick="window.print();"><button type="button" class="btn text-white btn-outline-success"><strong>Place order</strong></button></a>-->
                <%
                    } catch (Exception ex) {
                        out.println(ex.getMessage());
                    }
                %>
            </div>
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
