<%-- 
    Document   : login
    Created on : 13 Feb, 2021, 10:15:36 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Util.HibernateUtil"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Pojo.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    new HibernateUtil(HibernateUtil.getSessionFactory());
    %>

<!DOCTYPE html>
<html lang="en">

<head>

  <link rel="shortcut icon" href="img/fav.png">

  <meta charset="UTF-8">

  <title>Online Kirana Store</title>

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
</head>

<body>
<!--  <%String login_link = "";%> 
  <!% String login_link = "<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>"%>-->

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
              <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
 
              <li class="nav-item"><a class="nav-link" href="product.jsp">Products</a></li>
              <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
              <li class="nav-item"><a class="nav-link" href="register.jsp">Sign Up</a></li>
              <%--<%=login_link%>--%>
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


  <section class="banner-area">
    <div class="container">
      <div class="row fullscreen align-items-center justify-content-start">
        <div class="col-lg-12">

            <div class="row single-slide align-items-center d-flex">
              <div class="col-lg-5 col-md-6">
                <div class="banner-content">
                  <h1>Welcome! <br>to Online Kirana Store</h1>
                  <p>Here you can find all types of grocery items, just visit product section and add them to your cart.</p>
                  <div class="add-bag d-flex align-items-center">
                    <a class="add-btn" href="#products"><span class="lnr lnr-cross"></span></a>
                    <span class="add-text text-uppercase">Add to Cart</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-7">
                <div class="banner-img">
                  <img class="img-fluid" src="img/banner/banner-img.png" alt="">
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </section>


  <section class="features-area section_gap">
    <div class="container">
      <div class="row features-inner">

        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="single-features">
            <div class="f-icon">
              <img src="img/features/f-icon1.png" alt="">
            </div>
            <h6>Free Delivery</h6>
            <p>Free Shipping on all order</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="single-features">
            <div class="f-icon">
              <img src="img/features/f-icon2.png" alt="">
            </div>
            <h6>Return Policy</h6>
            <p>Free Shipping on all order</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="single-features">
            <div class="f-icon">
              <img src="img/features/f-icon3.png" alt="">
            </div>
            <h6>24/7 Support</h6>
            <p>Free Shipping on all order</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="single-features">
            <div class="f-icon">
              <img src="img/features/f-icon4.png" alt="">
            </div>
            <h6>Secure Payment</h6>
            <p>Free Shipping on all order</p>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="category-area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-12">
          <div class="row">
            <div class="col-lg-6 col-md-6">
              <div class="single-deal">
                <div class="overlay"></div>
                <img class="img-fluid w-100" src="img/category/pulses.jpg" alt="">
                <a href="#" target="_blank">
                  <div class="deal-details">
                    <h6 class="deal-title">Pulses</h6>
                  </div>
                </a>
              </div>
            </div><div class="col-lg-6 col-md-6">
              <div class="single-deal">
                <div class="overlay"></div>
                <img class="img-fluid w-100" src="img/category/skin-care.jpg" alt="">
                <a href="#" target="_blank">
                  <div class="deal-details">
                    <h6 class="deal-title">Skin care</h6>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div class="single-deal">
                <div class="overlay"></div>
                <img class="img-fluid w-100" src="img/category/dairy.jpg" alt="">
                <a href="#" up" target="_blank">
                  <div class="deal-details">
                    <h6 class="deal-title">Dairy</h6>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div class="single-deal">
                <div class="overlay"></div>
                <img class="img-fluid w-100" src="img/category/packaged-food.jpg" alt="">
                <a href="#" target="_blank">
                  <div class="deal-details">
                    <h6 class="deal-title">Packaged food</h6>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="single-deal">
                <div class="overlay"></div>
                <img class="img-fluid w-100" src="img/category/beverages.jpg" alt="">
                <a href="#" target="_blank">
                  <div class="deal-details">
                    <h6 class="deal-title">Beverages</h6>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="owl-carousel active-product-area section_gap" id="products">
    <div class="single-product-slider">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6 text-center">
            <div class="section-title">
              <h1>Masala Products</h1>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                dolore
                magna aliqua.</p>
            </div>
          </div>
        </div>
        <div class="row">

          <%
              List<Product> plist = ProductDAO.getAllProductsById(16);
              for(Product p:plist){
          %>
          <div class="col-lg-3 col-md-6">
            <div class="single-product">
                <img class="img-fluid" src="images/products/<%=p.getPphoto()%>" alt="">
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
                </div>
              </div>
            </div>
          </div>
          <%}%>
        </div>
      </div>
    </div>

    <div class="single-product-slider">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6 text-center">
            <div class="section-title">
              <h1>Fruits</h1>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                dolore
                magna aliqua.</p>
            </div>
          </div>
        </div>
        <div class="row">

          <%
              List<Product> list = ProductDAO.getAllProductsById(15);
              for(Product p:list){
          %>
          <div class="col-lg-3 col-md-6">
            <div class="single-product">
                <img class="img-fluid" src="img/product/<%=p.getPphoto()%>" alt="">
              <div class="product-details">
                <h6><%=p.getPname()%></h6>
                <div class="price">
                  <h6>&#8377; <%=p.getPriceAfterApplyingDiscount()%>/-</h6>
                  <h6 class="l-through">&#8377;<%=p.getPprice()%></h6>
                </div>
                <div class="prd-bottom">
                  <a href="#" class="social-info">
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
                  <!-- <a href="#" class="social-info">
                    <span class="lnr lnr-move"></span>
                    <p class="hover-text">view more</p>
                  </a> -->
                </div>
              </div>
            </div>
          </div>
          <%}%>
        </div>
      </div>
    </div>
  </section>

  <section class="brand-area section_gap">
    <div class="container">
      <div class="row">
        <a class="col single-img" href="#">
          <img class="img-fluid d-block mx-auto" src="img/brand/1.png" alt="">
        </a>
        <a class="col single-img" href="#">
          <img class="img-fluid d-block mx-auto" src="img/brand/2.png" alt="">
        </a>
        <a class="col single-img" href="#">
          <img class="img-fluid d-block mx-auto" src="img/brand/3.png" alt="">
        </a>
        <a class="col single-img" href="#">
          <img class="img-fluid d-block mx-auto" src="img/brand/4.png" alt="">
        </a>
        <a class="col single-img" href="#">
          <img class="img-fluid d-block mx-auto" src="img/brand/5.png" alt="">
        </a>
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
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
  </script>
  <script defer src="../../../static.cloudflareinsights.com/beacon.min.js"
    data-cf-beacon='{"version":"2021.2.0","si":10,"rayId":"62fb204e0dc00fce"}'></script>

</body>

</html>