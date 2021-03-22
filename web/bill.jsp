<%-- 
    Document   : bill
    Created on : 8 Mar, 2021, 11:27:52 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="Pojo.Shop"%>
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
    String d_boy = (String) session.getAttribute("d_boy");
    String db_charge = (String) session.getAttribute("db_charge");
    if (email != null) {
%>
<div style="margin-top: 10px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 >Welcome  <font color="ff6c00"><strong><%=email%></strong></font></h4>
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
        
        

        <script>
            $("document").ready(function ()
            {
                $('#cart').on('hidden.bs.modal', function () {
                    $('#cart form')[0].reset();

                });
            });
        </script>
        <style>
            .borderless td, .borderless th {
                border: none;
            }
            h3
            {
                color:#ff6c00;
            }
        </style>

        <title>Bill</title>
    </head>
    <body style="margin-top: 170px;">
        
        <jsp:include page="dashboardNavbar/customer_nav.jsp"/>
        
        <div style="padding-top: 5px;" class="container-fluid">
        </div>
        <%            try {
                int total = 0;
                int sno = 0;
                Connection conn = DBConnect_JDBC.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select sum(total) from cart where email='" + email + "' and status='bill'");

                while (rs.next()) {
                    total = rs.getInt(1);
                }
                ResultSet rs2 = st.executeQuery("select * from user inner join cart where cart.email='" + email + "' and cart.status='bill'");

                User user = UsersDAO.viewSingle(email);

        %>
        <div id="row_padding" class="container"> 
            <div class="row mt-5">
                <div class="col md-6">

                    <%                            while (rs2.next()) {
                            DeliveryBoy db = DeliveryboyDAO.viewSingle_by_name(d_boy);
                    %>
                    <table>
                        <tr>
                            <td colspan="2" >
                                <h4><strong><font color="ff6c00">Name: </font></strong><%=user.getUserName()%></h4>
                                <h4><strong><font color="ff6c00">Email: </font></strong><%=email%></h4>
                                <h4><strong><font color="ff6c00">Mobile number: </font></strong><%=user.getUserPhone()%></h4>
                                <h4><strong><font color="ff6c00">Order Date: </font></strong><%=rs2.getString(22)%></h4>
                                <h4><strong><font color="ff6c00">Payment method: </font></strong><%=rs2.getString(19)%></h4>
                                <h4><strong><font color="ff6c00">Delivery boy email: </font></strong><%=db.getDbEmail()%></h4>

                            </td>
                            <td style="padding-left: 150px;">
                                <h4><strong><font color="ff6c00">Delivery boy phone </font></strong><%=db.getDbPhone()%></h4>
                                        <% httpSession.setAttribute("phone", db.getDbPhone());%>
                                <h4><strong><font color="ff6c00">Delivery boy:  </font></strong><%=d_boy%></h4>
                                <h4><strong><font color="ff6c00">Transaction ID : </font></strong><%=rs2.getString(20)%></h4>
                                <h4><strong><font color="ff6c00">Address : </font></strong><%=rs2.getString(7)%></h4>
                                <h4><strong><font color="ff6c00">Expected Delivery date: </font></strong><%=rs2.getString(23)%></h4>
                                <h4><strong><font color="ff6c00">Charge of the Delivery boy: </font></strong><i class="fa fa-inr"></i> <%=db_charge%></h4>


                                <%
                                        break;
                                    }

                                %>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

                <div style="margin-bottom: 20px;"class="text-center">
                    <table class="table table-hover" width='100%'>
                        <thead>       
                            <tr>
                                <th>S.no</th>
                                <th>Product Name</th>
                                <th>Product Image</th>
                                <th>Shop Name</th>
                                <th>Category</th>
                                <th>Quantity </th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Total</th>
                            </tr>
                        </thead>

                        <%                            ResultSet rs1 = st.executeQuery("select * from cart inner join product where cart.p_id=product.pid and cart.email='" + email + "' and cart.status='bill'");
                            while (rs1.next()) {
                                sno = sno + 1;
                                Shop sh = ShopDAO.getShopId(Long.parseLong(rs1.getString(26)));
                                Category ct = CategoryDAO.getCategoryId(Long.parseLong(rs1.getString(25)));
                        %>
                        <tbody>
                            <tr>

                                <td><%out.println(sno);%></td>
                                <td><%=rs1.getString(19)%></td>
                                <td><img src="images/products/<%=rs1.getString(21)%>" style="max-height:120px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></td>
                                <td><%=sh.getShopName()%></td>
                                <td><%=ct.getCategoryTitle()%></td>
                                <td><%=rs1.getString(4)%></td>
                                <td><%=rs1.getString(5)%></td>
                                <td><%=rs1.getString(23) + "%"%></td>
                                <td><%=rs1.getString(6)%></td>
                            </tr>
                        </tbody>
                        <%}%>
                    </table>
                    <h3 >Total: <%out.println(total + Long.parseLong(db_charge));%></h3>
                    <a href="continueshopping.jsp"><button type="button" class="btn btn-outline-warning" ><strong>Continue Shopping</strong></button></a>
                    <a onclick="window.print();"><button type="button" class="btn btn-outline-success"><strong>Print of order</strong></button></a>
                    <%  String something_get = (String) httpSession.getAttribute("something_get"); %>
                    <a href="product.jsp"><button type="button" class="btn btn-outline-warning" ><strong>Go to My order</strong></button></a>
                    <%
                        } catch (Exception ex) {
                            out.println(ex.getMessage());
                        }
                    %>

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
