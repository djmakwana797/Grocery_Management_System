<%-- 
    Document   : shopkeeper_nav
    Created on : 18 Mar, 2021, 6:18:08 PM
    Author     : Makwana Divya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
              <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
              <li class="nav-item"><a class="nav-link" href="shop_vise_products.jsp">My Product</a></li>
              <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
              <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="nav-item"><a href="mycart.jsp" class="cart"><span class="lnr lnr-cart"></span></a></li>
              <li class="nav-item">
                <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
</html>