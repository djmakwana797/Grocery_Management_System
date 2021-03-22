<%@page import="Pojo.Cart"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ProductDAO"%>

    
<html>
    <!-- ======= Header ======= -->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt=""></a> -->
        <!-- Uncomment below if you prefer to use a text logo -->
        <h1><a href="index.jsp">Online Kirana Store</a></h1>
      </div>

      <nav id="nav-menu-container">
        <ul id="nav_padding" class="nav-menu">
          <li class="menu-active"><a href="index.jsp">Home</a></li>
          <li><a href="dashboard.jsp">Dashboard</a></li>
          <li><a href="product.jsp">Products</a></li>
          <li><a href="Myorder.jsp">My Order</a></li>
          <li><a href="#contact">Contact Us</a></li>
          <li><a href="register.jsp">Sign Up</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="mycart.jsp"><i class="fa fa-cart-plus" style="font-size: 20px; color: white;"></i><span class="ml-1 cart-items" ></span></a></li>
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- End Header -->
</html>
