<%-- 
    Document   : login
    Created on : 13 Feb, 2021, 10:15:36 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

    <head>

        <link rel="shortcut icon" href="img/fav.png">

        <meta charset="UTF-8">

        <title>Login</title>

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
            li
            {
                font-size: 20px;
            }
            </style>
    </head>

    <body>

        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">

                        <a class="navbar-brand logo" href="index.html">Online Kirana Store</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="product.jsp">Products</a></li>
                                <li class="nav-item"><a class="nav-link" href="register.jsp">Sign Up</a></li>
                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item"><a href="#" class="cart"><span class="lnr lnr-cart"></span></a></li>
                                <li class="nav-item">
                                    <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="search_input" id="search_input_box">
                <div class="container">
                    <form class="d-flex justify-content-between">
                        <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                        <button type="submit" class="btn"></button>
                        <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                    </form>
                </div>
            </div>
        </header>


        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Login</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="login.jsp">Login</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>


        <section class="login_box_area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="login_box_img">
                            <img class="img-fluid" src="img/login.jpg" alt="">
                            <div class="hover">
                                <h4>New to our website?</h4>
                                <!-- <p>There are advances being made in science and technology everyday, and a good example of this is the</p> -->
                                <a class="primary-btn" href="register.jsp">Create an Account</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="login_form_inner">
                            <%@include file="message.jsp" %>
                            <h3>Log in to enter</h3>
                            <form class="row login_form" action="login_data.jsp" method="post" id="login_form">
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="Username"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">            
                                    <p id="p1"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Password"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
                                    <p id="p2"></p>
                                </div>
                                <div class="form-select" id="default-select" style="margin-bottom: 20px">
                                    <select name="user_type" id="user_type">
                                        <option value="none">Select user type</option>
                                        <option value="Admin">Admin</option>
                                        <option value="Customer">Customer</option>
                                        <option value="Delivery boy">Delivery boy</option>
                                        <option value="Shopkeeper">Shopkeeper</option>
                                    </select>
                                    <p id="p3"></p>
                                </div>
                                <br></br>
                                <!--              <div class="col-md-12 form-group">
                                                <div class="creat_account">
                                                  <input type="checkbox" id="f-option2" name="selector">
                                                  <label for="f-option2">Keep me logged in</label>
                                                </div>
                                              </div>-->
                                <div style="margin-top: 20px;" class="col-md-12 form-group">
                                    <button  type="submit" value="submit" class="primary-btn">Log In</button>
                                    <a href="password_update.jsp">Forgot Password?</a>
                                </div>
                            </form>
                        </div>
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
    </body>

</html>