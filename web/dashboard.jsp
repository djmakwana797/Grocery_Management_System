<%-- 
    Document   : dashboard
    Created on : 15 Feb, 2021, 8:43:02 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.User"%>
<%@page import="Pojo.Product"%>
<%@page import="Pojo.Shop"%>
<%@page import="DAO.ShopDAO"%>
<%@page import="Pojo.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {
%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1><%=email%></h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                    <a href="dashboard.jsp">Dashboard</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<div class="container mt-4">
    <div class="row">
        <div class="col-md-6 col-sm-8">
            <a href="user_info.jsp"><button class="btn btn-success">View profile</button></a>
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
<html lang="en">
    <head>
        <link rel="shortcut icon" href="img/fav.png">

        <meta charset="UTF-8">

        <title>Dashboard</title>

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
        <%@include file="assets/css/bootstrap_cdn_links.jsp" %>
        <script>
            $("document").ready(function ()
            {
                $('#add-category-model').on('hidden.bs.modal', function () {
                    $('#add-category-model form')[0].reset();
                    $('#add-shop-model').on('hidden.bs.modal', function () {
                        $('#add-shop-model form')[0].reset();
                    });
                });
                $("#product_close").click(function () {
                    $('#add-product-model').on('hidden.bs.modal', function () {
                        $('#add-product-model form')[0].reset();
                    });
                });
            });
        </script>

    </head>
    <body>
        <%@include file="dashboardNavbar/shopkeeper_nav.jsp" %>
        <%
            List<Product> plist = ProductDAO.getAllProducts();
            List<Category> clist = CategoryDAO.viewAll();
            List<Shop> slist = ShopDAO.viewAll();
            List<User> list = UsersDAO.viewAll();
        %>      
        <%
            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Delivery boy")) {
        %>

        <%@include file="dashboardNavbar/delivery_boy_nav.jsp" %>

        <%
        } else if (user_type.equals("Shopkeeper")) {
        %>

        <%@include file="dashboardNavbar/shopkeeper_nav.jsp" %>

        <%
        } else if (user_type.equals("Customer")) {
        %>

        <%@include file="dashboardNavbar/customer_nav.jsp" %>

        <%
        } else {%>

        <%@include file="dashboardNavbar/admin_nav.jsp" %>

        <%}
            } catch (Exception ex) {
                System.out.println(ex);
            }
        %>

        <%
            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Admin")) {
        %>
        <div style="padding-bottom: 20px;" class="container admin">

            <div class="container-fluid mt-3">

                <%@ include file="message.jsp" %>
            </div>
            <div class="row mt-3">

                <!--first column-->
                <div class="col-md-4">
                    <div class="card">

                        <!--first box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/list.png" alt="user_icon" />
                            </div> 

                            <h1><%=clist.size()%></h1>
                            <h1 class="text-uppercase text-muted">Categories</h1>
                        </div>
                    </div>
                </div>

                <!--second column-->
                <div class="col-md-4">
                    <div class="card">

                        <!--second box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/product.png" alt="user_icon" />
                            </div> 

                            <h1><%=plist.size()%></h1>
                            <h1 class="text-uppercase text-muted">Products</h1>
                        </div>
                    </div>
                </div>

                <!--third column-->
                <div class="col-md-4">
                    <a href="all_shops_for_admin.jsp">
                        <div class="card">

                            <!--second box-->
                            <div class="card-body text-center">

                                <div class="container">
                                    <img style="max-width:122px;" class="img-fluid " src="assets/img/shop.png" alt="user_icon" />
                                </div> 

                                <h1><%=slist.size()%></h1>
                                <h1 class="text-uppercase text-muted">Shops</h1>
                            </div>
                        </div>
                    </a>
                </div>

            </div>

            <!--second row-->
            <div class="row mt-3" >

                <!--second column-->
                <div class="col-md-4">
                    <div class="card" data-toggle="modal" data-target="#add-category-model">

                        <!--third box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/calculator.png" alt="user_icon" />
                            </div> 

                            <p class="mt-2" style="font-size: 15px;">Click Here to add new category</p>
                            <h1 class="text-uppercase text-muted">Add category</h1>
                        </div>
                    </div>
                </div>

                <!--second column-->
                <div class="col-md-4">
                    <div class="card" data-toggle="modal" data-target="#add-product-model">

                        <!--third box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/plus.png" alt="user_icon" />
                            </div> 

                            <p class="mt-2" style="font-size: 15px;">Click Here to add new product</p>
                            <h1 class="text-uppercase text-muted">Add Product</h1>
                        </div>
                    </div>
                </div>

                <!--third column-->
                <div class="col-md-4">
                    <div class="card" data-toggle="modal" data-target="#add-shop-model">

                        <!--second box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:122px;" class="img-fluid " src="assets/img/shop.png" alt="user_icon" />
                            </div> 
                            <p class="mt-2" style="font-size: 15px;">Click Here to add new shop</p>
                            <h1 class="text-uppercase text-muted">Add Shop</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3" >
                <div class="col-md-4">
                    <div class="card" data-toggle="modal" data-target="#add-d_boy-model">

                        <!--second box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:122px;" class="img-fluid " src="assets/img/shop.png" alt="user_icon" />
                            </div> 
                            <p class="mt-2" style="font-size: 15px;">Click Here to add delievery boy</p>
                            <h1 class="text-uppercase text-muted">Add Delievery boy</h1>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%}
            } catch (Exception ex) {
                out.println("djdj");
            }
        %>

        <%
            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Shopkeeper")) {
        %>
        <div style="margin-bottom: 20px;" class="container admin">

            <div class="container-fluid mt-3">

                <%@ include file="message.jsp" %>
            </div>
            <div class="row mt-3">

                <!--first column-->
                <div class="col-md-6">
                    <div class="card">

                        <!--first box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/list.png" alt="user_icon" />
                            </div> 

                            <h1><%=clist.size()%></h1>
                            <h1 class="text-uppercase text-muted">Categories</h1>
                        </div>
                    </div>
                </div>

                <!--second column-->
                <div class="col-md-6">
                    <div class="card">

                        <!--second box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/product.png" alt="user_icon" />
                            </div> 

                            <h1><%=plist.size()%></h1>
                            <h1 class="text-uppercase text-muted">Products</h1>
                        </div>
                    </div>
                </div>

            </div>

            <!--second row-->
            <div class="row mt-3" >

                <!--second column-->
                <div class="col-md-6">
                    <div class="card" data-toggle="modal" data-target="#add-category-model">

                        <!--third box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/calculator.png" alt="user_icon" />
                            </div> 

                            <p class="mt-2" style="font-size: 15px;">Click Here to add new category</p>
                            <h1 class="text-uppercase text-muted">Add category</h1>
                        </div>
                    </div>
                </div>

                <!--second column-->
                <div class="col-md-6">
                    <div class="card" data-toggle="modal" data-target="#add-product-model-shop">

                        <!--third box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/plus.png" alt="user_icon" />
                            </div> 

                            <p class="mt-2" style="font-size: 15px;">Click Here to add new product</p>
                            <h1 class="text-uppercase text-muted">Add Product</h1>
                        </div>
                    </div>
                </div>


                <!--start add product model-->
                <div class="container">

                    <!-- The Modal -->
                    <div class="modal fade" id="add-product-model-shop">
                        <div class="modal-dialog model-lg">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header custom-bg">
                                    <h4 class="modal-title text-white">Fill product details</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">

                                    <form action="ProductOperation" id="add_product" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="operation" value="addproduct" />
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="pname" placeholder="Enter product name" required />
                                        </div>

                                        <div class="form-group">
                                            <input type="text" class="form-control" name="punit" placeholder="Stock per order: Ex: 1 Kg,10 Liter, 100 ml" required />
                                        </div>

                                        <div class="form-group">
                                            <textarea style="height: 150px;" type="text" class="form-control" name="pdesc" placeholder="Enter product description" required ></textarea>
                                        </div>

                                        <div class="form-group">
                                            <input  type="number" class="form-control" name="pprice" placeholder="Enter product price" required />
                                        </div>

                                        <div class="form-group">
                                            <input type="number" class="form-control" name="pdiscount" placeholder="Enter product discount" required >
                                        </div>

                                        <div class="form-group">
                                            <input type="number" class="form-control" name="pquantity" placeholder="Enter product quantity" required >
                                        </div>

                                        <%
                                            List<Category> categories1 = CategoryDAO.viewAll();
                                        %>
                                        <div class="form-group" style="padding-bottom: 20px;">
                                            <select name="categoryId" class="form-control" id="categoryId" required>
                                                <option value="none" selected disabled hidden>Select a category</option> 
                                                <%
                                                    for (Category obj : categories1) {
                                                %>

                                                <option value="<%=obj.getCategoryId()%>"><%=obj.getCategoryTitle()%></option>
                                                <%}%>
                                            </select>
                                            <p id="p1"></p>
                                        </div>

                                        <div class="form-group" style="padding-bottom: 20px;">
                                            <select name="shop_id" class="form-control" required id="shop_id">
                                                <%
                                                    Shop shops1 = ShopDAO.viewSingle(email);
                                                %>
                                                <option value="none" selected disabled hidden>Select a shop</option> 
                                                <option value="<%=shops1.getShopId()%>"><%=shops1.getShopName()%></option>
                                            </select>
                                            <p id="p2"></p>
                                        </div>


                                        <div class="form-group">
                                            <label for="pPhoto">Select Picture of your product</label>

                                            <input type="file" class="form-control" name="pphoto" required="" />
                                        </div>

                                        <div class="container text-center">
                                            <button class="btn btn-outline-success">Add product</button>
                                            <button id="product_close" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </form>                    
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

                <!--end add product model-->

            </div>

        </div>
        <%}
            } catch (Exception ex) {
                out.println("djdjdj");
            }
        %>

        <%
            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Customer")) {
        %>
        <div style="padding-bottom: 20px;" class="container admin">

            <div class="container-fluid mt-3">

                <%@ include file="message.jsp" %>
            </div>
            <div class="row mt-3">

                <!--first column-->

                <div class="col-md-4">
                    <a href="product.jsp">
                        <div class="card">

                            <!--first box-->
                            <div class="card-body text-center">

                                <div class="container">
                                    <img style="max-width:110px;" class="img-fluid " src="assets/img/list.png" alt="user_icon" />
                                </div> 

                                <h1><%=clist.size()%></h1>
                                <h1 class="text-uppercase text-muted">Categories</h1>
                            </div>
                        </div>

                    </a>
                </div>


                <!--second column-->
                <div class="col-md-4">
                    <div class="card">

                        <!--second box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:110px;" class="img-fluid " src="assets/img/product.png" alt="user_icon" />
                            </div> 

                            <h1><%=plist.size()%></h1>
                            <h1 class="text-uppercase text-muted">Products</h1>
                        </div>
                    </div>
                </div>

                <!--third column-->
                <div class="col-md-4">
                    <div class="card">

                        <!--second box-->
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:122px;" class="img-fluid " src="assets/img/shop.png" alt="user_icon" />
                            </div> 

                            <h1><%=slist.size()%></h1>
                            <h1 class="text-uppercase text-muted">Shops</h1>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <%}
            } catch (Exception ex) {
                out.println("donee");
            }
        %>

        <%
            try {
                String user_type = (String) session.getAttribute("user_type");
        %>

        <%                        if (user_type.equals("Delivery boy")) {
        %>
        <div style="margin-bottom: 20px;" class="container admin">

            <div class="container-fluid mt-3">

                <%@ include file="message.jsp" %>
                <div class="row mt-3">

                    <!--second column-->
                    <div class="col-md-4">
                        <a href="view_messages.jsp">
                            <div class="card">

                                <!--third box-->
                                <div class="card-body text-center">

                                    <div class="container">
                                        <img style="max-width:110px;" class="img-fluid " src="assets/img/people.png" alt="user_icon" />
                                    </div> 

                                    <p class="mt-2" style="font-size: 15px;">Click Here to view a messages</p>
                                    <h1 class="text-uppercase text-muted">View messages</h1>
                                </div>
                            </div>
                        </a>
                    </div>

                    <!--second column-->
                    <div class="col-md-4">
                        <a href="received_orders.jsp">
                            <div class="card">

                                <!--third box-->
                                <div class="card-body text-center">

                                    <div class="container">
                                        <img style="max-width:110px;" class="img-fluid " src="assets/img/people.png" alt="user_icon" />
                                    </div> 
                                    <h1 class="text-uppercase text-muted">Received orders</h1>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <%                }
            } catch (Exception ex) {

            }
        %>
        <!--add category model-->

        <div class="container">

            <!-- The Modal -->
            <div class="modal fade" id="add-category-model">
                <div class="modal-dialog model-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header custom-bg">
                            <h4 class="modal-title text-white">Fill category details</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">

                            <form action="ProductOperationsjsp.jsp">
                                <input type="hidden" name="operation" value="addcategory" />
                                <div class="form-group">
                                    <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required />
                                </div>

                                <div class="form-group">
                                    <textarea style="height: 150px;" type="text" class="form-control" name="catDescription" placeholder="Enter category description" required ></textarea>
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Add category</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>



                            </form>

                        </div>

                    </div>
                </div>
            </div>

        </div>

        <!--end aadd category model
        
        ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        
        <!--start add product model-->
        <div class="container">

            <!-- The Modal -->
            <div class="modal fade" id="add-product-model">
                <div class="modal-dialog model-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header custom-bg">
                            <h4 class="modal-title text-white">Fill product details</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">

                            <form action="ProductOperation" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="operation" value="addproduct" encytype="multipart/form-data" />
                                <div class="form-group">
                                    <input type="text" class="form-control" name="pname" placeholder="Enter product name" required />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="punit" placeholder="Stock per order: Ex: 1 Kg,10 Liter, 100 ml" required />
                                </div>

                                <div class="form-group">
                                    <textarea style="height: 150px;" type="text" class="form-control" name="pdesc" placeholder="Enter product description" required ></textarea>
                                </div>

                                <div class="form-group">
                                    <input  type="number" class="form-control" name="pprice" placeholder="Enter product price" required />
                                </div>

                                <div class="form-group">
                                    <input type="number" class="form-control" name="pdiscount" placeholder="Enter product discount" required >
                                </div>

                                <div class="form-group">
                                    <input type="number" class="form-control" name="pquantity" placeholder="Enter product quantity" required >
                                </div>

                                <%
                                    List<Category> categories = CategoryDAO.viewAll();
                                %>

                                <div class="form-group">
                                    <select name="categoryId" class="form-control" id="" required>
                                        <option value="none" selected disabled hidden>Select a category</option> 
                                        <%
                                            for (Category obj : categories) {
                                        %>
                                        <option value="<%=obj.getCategoryId()%>"><%=obj.getCategoryTitle()%></option>
                                        }
                                        <%}%>
                                    </select>
                                </div>


                                <%
                                    List<Shop> shops = ShopDAO.viewAll();
                                %>

                                <div class="form-group">
                                    <select name="shop_id" class="form-control" required id="">
                                        <option value="none" selected disabled hidden>Select a shop</option> 
                                        <%
                                            for (Shop obj : shops) {
                                        %>
                                        <option value="<%=obj.getShopId()%>"><%=obj.getShopName()%></option>
                                        }
                                        <%}%>
                                    </select>
                                </div>


                                <div class="form-group">
                                    <label for="pPhoto">Select Picture of your product</label>

                                    <input type="file" class="form-control" name="pphoto" required="" />
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Add product</button>
                                    <button id="product_close" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </form>                    
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <!--end add product model-->


        <!--start add shop model-->
        <div class="container">

            <!-- The Modal -->
            <div class="modal fade" id="add-d_boy-model">
                <div class="modal-dialog model-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header custom-bg">
                            <h4 class="modal-title text-white">Fill delivery boy details</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">

                            <form action="ProductOperationsjsp.jsp" method="post">
                                <input type="hidden" name="operation" value="add_d_boy" />

                                <div class="form-group">
                                    <input type="text" class="form-control" name="db_email" placeholder="Enter delivery boy email" required />
                                </div>

                                <div class="form-group">
                                    <input type="password" class="form-control" name="db_pass" placeholder="Enter delivery boy password" required />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="db_name" placeholder="Enter delivery boy name" required />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="db_city" placeholder="Enter delivery boy city" required />
                                </div>

                                <div class="form-group">
                                    <input  type="text" class="form-control" name="db_phone" placeholder="Enter delivery boy phone" required />
                                </div>

                                <div class="form-group">
                                    <textarea type="text" class="form-control" name="db_address" placeholder="Enter delivery boy address" required ></textarea>
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Add delivery boy</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </form>     

                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!--start add shop model-->
        <div class="container">

            <!-- The Modal -->
            <div class="modal fade" id="add-shop-model">
                <div class="modal-dialog model-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header custom-bg">
                            <h4 class="modal-title text-white">Fill shop details</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">

                            <form action="ProductOperationsjsp.jsp" method="post">
                                <input type="hidden" name="operation" value="addshop" />
                                <div class="form-group">
                                    <input type="text" class="form-control" name="shop_owner" placeholder="Enter shop owner" required />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="shop_name" placeholder="Enter shop name" required />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="shop_email" placeholder="Enter shop email" required />
                                </div>
                                <div class="form-group">
                                    <input  type="text" class="form-control" name="shop_phone" placeholder="Enter shop phone" required />
                                </div>
                                <input type="hidden" name="status" value="availabel" />   
                                <div class="form-group">
                                    <textarea type="text" class="form-control" name="shop_detail" placeholder="Enter shop details" required ></textarea>
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Add shop</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </form>     

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
        <!--        <script src="css_js_files/jquery.min.js"></script>-->
        <script src="css_js_files/popper.min.js"></script>
        <%@include file="css/common_models.jsp" %> 

    </body>
    <!--end add product model-->
</html>
