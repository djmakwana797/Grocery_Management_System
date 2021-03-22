<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.User"%>
<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Pojo.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <title>Edit user</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            User user = UsersDAO.viewSingle_by_user_id(Long.parseLong(id));
        %>
        <jsp:include page="dashboardNavbar/user_nav.jsp" />

        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Edit Profile</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="edit_user.jsp">Edit Profile</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <section class="login_box_area section_gap">
            <div class="container">
                <div class="row" style="justify-content:center;">
                    <div class="col-lg-6">
                        <div class="login_form_inner">
                            <h3>Edit Profile</h3>
                            <form class="row login_form" action="users_edit_submit.jsp" method="post" id="reg_form">
                                <input type="hidden" name="user_id" value="<%=user.getUserId()%>"/>
                                <%@include file="message.jsp" %>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userName" name="userName" placeholder="Username"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" value=<%=user.getUserName()%>>
                                    <p id="p1"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="Email Address"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" value=<%=user.getUserEmail()%>>
                                    <p id="p2"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Password"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" value=<%=user.getUserPassword()%>>
                                    <p id="p3"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="number" class="form-control" id="userPhone" name="userPhone" placeholder="Phone number"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number'" value=<%=user.getUserPhone()%>>
                                    <p id="p4"></p>
                                </div>
                                <div class="form-select" id="default-select">
                                    <select style="margin-bottom: 20px;" name="user_type" id="user_type">
                                        <option value="<%=user.getUserType()%>"><%=user.getUserType()%></option>
                                    </select>
                                    <p id="p5"></p>
                                </div>
                                <br></br>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userAddress" name="userAddress" placeholder="Address"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'" value=<%=user.getUserAddress()%>>
                                    <p id="p6"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <button type="submit" value="submit" class="primary-btn mb-5">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- /form -->

        </div> <!-- ./container -->
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

