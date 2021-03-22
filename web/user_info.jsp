<%-- 
    Document   : db_info
    Created on : 9 Mar, 2021, 4:34:52 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.User"%>
<%@page import="DAO.UsersDAO"%>
<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    String db_charge = (String) session.getAttribute("db_charge");
    if (email != null) {
%>
<jsp:include page="dashboardNavbar/user_nav.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
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
        <link rel="stylesheet" href="css_js_files/style.css">
    </head>
    <body>

        <%
            try {
                User d_boy = UsersDAO.viewSingle(email);
                if (d_boy.getUserType().equals("Shopkeeper")) {
                    httpSession.setAttribute("shopkeeper_email", email);
                }
                if (d_boy.getUserType().equals("Delivery boy")) {
                    httpSession.setAttribute("db_email", email);
                }
        %>
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Profile</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="user_info.jsp">Profile</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <div class="container shadow p-3 mb-5 bg-white rounded mt-5">
            <div class="row">
                <div class="col-md-12 col-sm-8">
                    <h4 class="text-blue">Welcome  <strong><%=email%></strong></h4>
                </div>
            </div>
            <%@include file="message.jsp" %>
            <div class="row mt-2">
                <div class="col md-6">
                    <table >
                        <tr>
                            <td colspan="2">
                                <h4><font color="#ff6c00">User type :</font><%=" "+d_boy.getUserType()%></h4>
                                <h4><font color="#ff6c00">Username : </font><%=d_boy.getUserName()%></h4>
                                <h4><font color="#ff6c00">User email : </font><%=d_boy.getUserEmail()%></h4>
                                <h4><font color="#ff6c00">User phone : </font><%=d_boy.getUserPhone()%></h4>
                                <h4><font color="#ff6c00">User address : </font><%=d_boy.getUserAddress()%></h4>

                            </td>
                        </tr>
                    </table>
                    <a href='edit_users.jsp?id=<%=d_boy.getUserId()%>'><button type="button" class="btn btn-primary">Edit <i class="fa fa-edit"></i></button></a>
                    <a href='dashboard.jsp'><button type="button" class="btn btn-success"><i class="fa fa-arrow-left"></i> Back</button></a>

                    <%   } catch (Exception ex) {

                        }%>
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
    </body>
</html>
<%
} else {
%>
<%
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>