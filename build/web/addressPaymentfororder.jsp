<%-- 
    Document   : addressfororder
    Created on : 7 Mar, 2021, 11:35:48 PM
    Author     : Dilip J Sarvaiya
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    String product_id = request.getParameter("id");
    if (email != null) {
%>
<div style="margin-top: 10px;" class="container">
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


<%
    int total = 0;
    int sno = 0;
    int db_charge = 0;
    try {
        Connection conn = DBConnect_JDBC.getConnection();
        Statement st = conn.createStatement();
        ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
        while (rs1.next()) {
            total = rs1.getInt(1);
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
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

        <script>
            if (window.history.forward(1) != null)
                window.history.forward(1);
        </script>
    </head>
    <body>
    <jsp:include page="dashboardNavbar/customer_nav.jsp"/>
        <%
            ResultSet rs2 = st.executeQuery("select * from user where userEmail='" + email + "' ");
            while (rs2.next()) {
        %>
        <section class="checkout_area section_gap">
            <div class="container">
                <div class="billing_details">
                    <div class="row">
                        <div class="col-lg-5">
                            <h3>Billing Details</h3>
                            <%@include file="message.jsp" %>
                            <form class="row contact_form" action="addressPaymentForOrderAction.jsp" id="order_form_while_address"  method="post">
                                <div class="col-md-12 form-group">
                                    <label>Username<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" id="userName" name="userName" value="<%=rs2.getString(2)%>">
                                    <p id="p1"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <label>Email<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" id="userEmail" name="userEmail" value="<%=rs2.getString(3)%>">
                                    <p id="p2"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <label>Phone<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" id="userPhone" name="userPhone" value="<%=rs2.getString(5)%>">
                                    <p id="p3"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <label for="user_type" class="col-sm-6 control-label">User-type<span style="color: red;">*</span></label>

                                    <select name="user_type" class=" form-control" id="user_type" required>
                                        <option value="<%=rs2.getString(6)%>"><%=rs2.getString(6)%></option> 
                                    </select>
                                    <p id="p4"></p>

                                </div>
                                <div class="col-md-12 form-group">
                                    <label for="payment_method" class="col-sm-6 control-label">Select way of payment<span style="color: red;">*</span></label>
                                    <select name="payment_method" class="form-control" id="user_type" required>
                                        <option value="Cash on delivery(COD)">Cash on delivery(COD)</option> 
                                        <option value="Online Payment">Online Payment</option> 
                                    </select>
                                    <p id="p5"></p>
                                </div> 
                                <div class="col-md-12 form-group">
                                    <label for="d_boy" class="col-sm-6 control-label">Select available delivery boy<span style="color: red;">*</span></label>
                                    <select name="d_boy" class="form-control" id="d_boy" required>
                                        <%
                                            List<DeliveryBoy> list = DeliveryboyDAO.For_getting_all_boys();
                                            if (list.isEmpty()) {
                                        %>
                                        <option value="none" >Delivery boys are not available on this time</option> 
                                        <%} else {
                                            for (DeliveryBoy d : list) {
                                        %>
                                        <option value="<%=d.getDbName()%>"><%=d.getDbName()%></option> 
                                        <%}%>
                                        <%}%>
                                    </select>
                                    <p id="p6"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" name="transactionId" id="transactionId" placeholder="Enter transaction Id" class="form-control">
                                </div>
                                <div class="col-md-12 form-group">
                                    Shipping address<span style="color: red;">*</span>
                                    <textarea class="form-control" name="userAddress" id="userAddress" rows="1"
                                              placeholder="Order Notes" required><%=rs2.getString(7)%></textarea>
                                </div>
                                <div class="col-md-12 form-group">
                                    <button class="primary-btn" type="submit">Order now</button>
                                    <button class="primary-btn" onClick="window.location.href = 'product.jsp';">Cancel</button>
                                </div>
                            </form><%

                                }

                            %>
                        </div>


                        <div class="col-lg-7">

                            <table class="table table-hover" width='100%'>
                               
                                <thead>
                                <tr>
                                    <th colspan="2" rowspan="1" style="background-color: aqua;color:black"><a href="mycart.jsp"><i style="color:black;" class="fa fa-arrow-left"></i> </a>Back</th>
                                    <%if (total > 0 && total < 2000) {
                                            db_charge = 50;%><th colspan="2" style="background-color: yellow; color: black">Total: <i class="fa fa-inr"></i><%=total + db_charge%></th><%} else if (total > 2000 && total < 5000) {
                                                    db_charge = 100;%><th colspan="2" style="background-color: yellow; color: black">Total: <i class="fa fa-inr"></i><%=total + db_charge%></th><%} else {
                                            db_charge = 200;%><th colspan="2" style="background-color: yellow; color: black">Total: <i class="fa fa-inr"></i><%=total + db_charge%></th><%}

                                        %>
                                        <%if (total > 0 && total < 2000) {
                                        %><th colspan="3" style="background-color: blue; color: white">Delivery boy charge: <i class="fa fa-inr"></i><%=db_charge%></th><%} else if (total > 2000 && total < 5000) {
                                    %><th colspan="3" style="background-color: blue; color: white">Delivery boy charge: <i class="fa fa-inr"></i><%=db_charge%></th><%} else {
                                    %><th colspan="3" style="background-color: blue; color: white">Delivery boy charge: <i class="fa fa-inr"></i><%=db_charge%></th><%}
                                        %>

                                    <%
                                        httpSession.setAttribute("db_charge", Integer.toString(db_charge));
                                    %>
                                </tr>
                                    <tr>
                                        <th>Id</th>
                                        <th>Product Name</th>
                                        <th>Product Image</th>
                                        <th>Shop Name</th>
                                        <th>Category</th>
                                        <th>Quantity </th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <%
                                    ResultSet rs = st.executeQuery("select * from product inner join cart on product.pid=cart.p_id and cart.email='" + email + "' and cart.address is NULL");
                                    while (rs.next()) {
                                        Shop sh = ShopDAO.getShopId(Long.parseLong(rs.getString(9)));
                                        Category ct = CategoryDAO.getCategoryId(Long.parseLong(rs.getString(8)));
                                %>
                                <tbody>    
                                    <tr>
                                        <%sno = sno + 1;%>
                                        <td><%out.println(sno);%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><img src="images/products/<%=rs.getString(4)%>" style="max-height:120px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></td>
                                        <td><%=sh.getShopName()%></td>
                                        <td><%=ct.getCategoryTitle()%></td>
                                        <td><a href="inc_dec_quantity.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i style="color:#e0a800;" class="fa fa-plus-circle"></i></a> <%=rs.getString(14)%> <a href="inc_dec_quantity.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i style="color:#e0a800;" class="fa fa-minus-circle"></i></a></td>
                                        <td><i class="fa fa-inr"></i><%=rs.getString(5)%></td>
                                        <td><%=rs.getString(6) + "%"%></td>
                                        <td><i class="fa fa-inr"></i><%=rs.getString(16)%></td>
                                        <td><a href='removefromcart.jsp?id=<%=rs.getString(1)%>'><button type="button" class="btn btn-danger">Remove</button></a></td>
                                    </tr>
                                </tbody>
                                <%}%>


                            </table>


                        </div>
                        <% } catch (Exception ex) {
                                out.println(ex.getMessage());
                            }%>  
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
        <script src="js/script.js"></script>
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
