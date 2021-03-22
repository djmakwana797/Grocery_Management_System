<%-- 
    Document   : product.jsp
    Created on : 23 Feb, 2021, 4:40:19 PM
    Author     : Makwana Divya
--%>

<%@page import="DAO.ShopDAO"%>
<%@page import="Pojo.Shop"%>
<%@page import="Util.Helper"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Pojo.Category"%>
<%@page import="Util.HibernateUtil"%>
<%@page import="Pojo.Product"%>
<%@page import="java.util.List"%>
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

        <script>
            $("document").ready(function ()
            {
                $('#cart').on('hidden.bs.modal', function () {
                    $('#cart form')[0].reset();

                });
            });
        </script>

        <title>Products</title>
    </head>
    <body id="category">
        <%
            HttpSession httpSession = request.getSession();
            String email = (String) session.getAttribute("login_or_not");
            if (email != null) {
        %>
        <jsp:include page="dashboardNavbar/customer_nav.jsp"/>
        <%} else {%>
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">

                        <a class="navbar-brand logo" href="index.jsp">Online Kirana Store</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                                <li class="nav-item active"><a class="nav-link" href="product.jsp">Products</a></li>
                                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="register.jsp">Sign Up</a></li>
                                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
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
        <%}%>
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Products</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="product.jsp">Product</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        
        <div class="container">
             
            <div class="row">      
                <%                    String cat = request.getParameter("category");
                    String shop = request.getParameter("shop");
                    new HibernateUtil(HibernateUtil.getSessionFactory());
                    List<Product> plist = null;

                    if (cat == null || shop == null || shop.trim().equals("all") || cat.trim().equals("all")) {
                        plist = ProductDAO.getAllProducts();
                    }
                    if (cat != null) {
                        long cid = Long.parseLong(cat);
                        plist = ProductDAO.getAllProductsById(cid);
                        httpSession.setAttribute("category_value", cat);
                    }
                    if (shop != null) {
                        long cid = Long.parseLong(shop);
                        plist = ProductDAO.getAllProductsByShopId(cid);
                        httpSession.setAttribute("shop_value", shop);
                    }


                    List<Category> clist = CategoryDAO.viewAll();
                %>
                <div class="col-xl-3 col-lg-4 col-md-5">
                    <div class="sidebar-categories">
                        <div class="head">Browse Categories</div>
                        <ul class="main-categories">

                            <% for (Category category : clist) {%>
                            <li class="main-nav-list"><a href="product.jsp?category=<%=category.getCategoryId()%>" aria-expanded="false"
                                                         aria-controls="fruitsVegetable"><span class="lnr lnr-arrow-right"></span><%=category.getCategoryTitle()%><span class="number"></span></a>
                            </li>
                            <% } %>
                        </ul>
                    </div>
                    <div class="sidebar-categories">
                        <div class="head">Browse Shops</div>
                        <ul class="main-categories">
                            <% List<Shop> sh = ShopDAO.viewAll();
                                for (Shop s : sh) {%>
                            <li class="main-nav-list"><a href="product.jsp?shop=<%=s.getShopId()%>" aria-expanded="false"
                                                         aria-controls="fruitsVegetable"><span class="lnr lnr-arrow-right"></span><%=s.getShopName()%><span class="number"></span></a>
                            </li>
                            <% } %>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8 col-md-7">
                    <%@include file="message.jsp" %>
                    <section class="lattest-product-area pb-40 category-list">
                        <div class="row">
                            <% for (Product p : plist) {%>

                            <!--product card-->

                            <div class="col-lg-4 col-md-5">
                                <div class="single-product">
                                    <img class="img-fluid" style="max-height:240px; max-width: 100%; width:auto"  src="images/products/<%=p.getPphoto()%>" alt="">
                                    <div class="product-details">
                                        <h6><%=p.getPname()%></h6>
                                        <div class="price">
                                            <h6>&#8377; <%=p.getPriceAfterApplyingDiscount()%>/-</h6>
                                            <h6 class="l-through">&#8377;<%=p.getPprice()%></h6>
                                        </div>
                                        <div class="prd-bottom">
                                            <a href="addtocardAction.jsp?id=<%=p.getPid()%>" class="social-info">
                                                <span class="lnr lnr-cart"></span>
                                                <p class="hover-text">add to cart</p>
                                            </a>
                                            <a href="#" class="social-info">
                                                <span class="lnr lnr-heart"></span>
                                                <p class="hover-text">Wishlist</p>
                                            </a>
                                            <a href="#" class="social-info">
                                                <span class="lnr lnr-sync"></span>
                                                <p class="hover-text">compare</p>
                                            </a>
                                            <a href="#" class="social-info">
                                                <span class="lnr lnr-move"></span>
                                                <p class="hover-text">view more</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%  }

                                if (plist.size() == 0) {
                                    out.println("<h3>No Items are available</h3>");
                                }

                            %>
                        </div>
                </div>
            </div>
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

</body>
</body>
</html>