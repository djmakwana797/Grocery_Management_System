package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.DeliveryboyDAO;
import Pojo.DeliveryBoy;
import DAO.UsersDAO;
import Pojo.User;
import Pojo.Product;
import Pojo.Shop;
import DAO.ShopDAO;
import Pojo.Category;
import DAO.CategoryDAO;
import DAO.ProductDAO;
import java.util.List;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(7);
    _jspx_dependants.add("/assets/css/bootstrap_cdn_links.jsp");
    _jspx_dependants.add("/dashboardNavbar/shopkeeper_nav.jsp");
    _jspx_dependants.add("/dashboardNavbar/delivery_boy_nav.jsp");
    _jspx_dependants.add("/dashboardNavbar/customer_nav.jsp");
    _jspx_dependants.add("/dashboardNavbar/admin_nav.jsp");
    _jspx_dependants.add("/message.jsp");
    _jspx_dependants.add("/css/common_models.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {

      out.write("\r\n");
      out.write("<section class=\"banner-area organic-breadcrumb\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end\">\r\n");
      out.write("            <div class=\"col-first\">\r\n");
      out.write("                <h1>");
      out.print(email);
      out.write("</h1>\r\n");
      out.write("                <nav class=\"d-flex align-items-center\">\r\n");
      out.write("                    <a href=\"index.jsp\">Home<span class=\"lnr lnr-arrow-right\"></span></a>\r\n");
      out.write("                    <a href=\"dashboard.jsp\">Dashboard</a>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("<div class=\"container mt-4\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-6 col-sm-8\">\r\n");
      out.write("            <a href=\"user_info.jsp\"><button class=\"btn btn-success\">View profile</button></a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");

    } else {
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/fav.png\">\r\n");
      out.write("\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("\r\n");
      out.write("        <title>Dashboard</title>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/linearicons.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nice-select.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nouislider.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ion.rangeSlider.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ion.rangeSlider.skinFlat.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css_js_files/style.css\">\r\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Favicons -->\n");
      out.write("  <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("  <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\n");
      out.write("  \n");
      out.write("  <!-- Google Fonts -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Vendor CSS Files -->\n");
      out.write("  <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/owl.carousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/venobox/venobox.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Template Main CSS File -->\n");
      out.write("  <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("<div id=\"snackbar\"></div>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("  <!-- =======================================================\n");
      out.write("  * Template Name: Regna - v2.2.1\n");
      out.write("  * Template URL: https://bootstrapmade.com/regna-bootstrap-onepage-template/\n");
      out.write("  * Author: BootstrapMade.com\n");
      out.write("  \n");
      out.write("  * License: https://bootstrapmade.com/license/\n");
      out.write("  ======================================================== -->\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            $(\"document\").ready(function ()\r\n");
      out.write("            {\r\n");
      out.write("                $('#add-category-model').on('hidden.bs.modal', function () {\r\n");
      out.write("                    $('#add-category-model form')[0].reset();\r\n");
      out.write("                    $('#add-shop-model').on('hidden.bs.modal', function () {\r\n");
      out.write("                        $('#add-shop-model form')[0].reset();\r\n");
      out.write("                    });\r\n");
      out.write("                });\r\n");
      out.write("                $(\"#product_close\").click(function () {\r\n");
      out.write("                    $('#add-product-model').on('hidden.bs.modal', function () {\r\n");
      out.write("                        $('#add-product-model form')[0].reset();\r\n");
      out.write("                    });\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <header class=\"header_area sticky-header\">\n");
      out.write("    <div class=\"main_menu\">\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("          <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("              <li class=\"nav-item active\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"shop_vise_products.jsp\">My Product</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">Logout</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("              <li class=\"nav-item\"><a href=\"mycart.jsp\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"search_input\" id=\"search_input_box\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <form class=\"d-flex justify-content-between\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search Here\">\n");
      out.write("          <button type=\"submit\" class=\"btn\"></button>\n");
      out.write("          <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("        ");

            
            List<Product> plist = ProductDAO.getAllProducts();
            List<Category> clist = CategoryDAO.viewAll();
            List<Shop> slist = ShopDAO.viewAll();
            List<User> list = UsersDAO.viewAll();
        
      out.write("      \r\n");
      out.write("        ");

            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Delivery boy")) {
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <header class=\"header_area sticky-header\">\n");
      out.write("    <div class=\"main_menu\">\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("          <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("                \n");
      out.write("              <li class=\"nav-item active\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\n");
      out.write("              <li class=\"nav-item active\"><a class=\"nav-link\" href=\"view_messages.jsp\">View messages</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">Logout</a></li>\n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("              <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("              <li class=\"nav-item\"><a href=\"mycart.jsp\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"search_input\" id=\"search_input_box\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <form class=\"d-flex justify-content-between\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search Here\">\n");
      out.write("          <button type=\"submit\" class=\"btn\"></button>\n");
      out.write("          <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

        } else if (user_type.equals("Shopkeeper")) {
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <header class=\"header_area sticky-header\">\n");
      out.write("    <div class=\"main_menu\">\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("          <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("              <li class=\"nav-item active\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"shop_vise_products.jsp\">My Product</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">Logout</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("              <li class=\"nav-item\"><a href=\"mycart.jsp\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"search_input\" id=\"search_input_box\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <form class=\"d-flex justify-content-between\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search Here\">\n");
      out.write("          <button type=\"submit\" class=\"btn\"></button>\n");
      out.write("          <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

        } if (user_type.equals("Customer")) {
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <header class=\"header_area sticky-header\">\n");
      out.write("    <div class=\"main_menu\">\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("          <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("              <li class=\"nav-item active\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\n");
      out.write(" \n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"product.jsp\">Products</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"Myorder.jsp\">My orders</a></li>\n");
      out.write("              ");
      out.write("\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">Logout</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("              <li class=\"nav-item\"><a href=\"mycart.jsp\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"search_input\" id=\"search_input_box\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <form class=\"d-flex justify-content-between\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search Here\">\n");
      out.write("          <button type=\"submit\" class=\"btn\"></button>\n");
      out.write("          <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

        } else {
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <header class=\"header_area sticky-header\">\n");
      out.write("    <div class=\"main_menu\">\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("          <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"product.jsp\">Products</a></li>\n");
      out.write("              <li class=\"nav-item active\"><a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">Logout</a></li>\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("              <li class=\"nav-item\"><a href=\"#\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"search_input\" id=\"search_input_box\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <form class=\"d-flex justify-content-between\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search Here\">\n");
      out.write("          <button type=\"submit\" class=\"btn\"></button>\n");
      out.write("          <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
}
            } catch (Exception ex) {
                System.out.println(ex);
            }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Admin")) {
        
      out.write("\r\n");
      out.write("        <div style=\"padding-bottom: 20px;\" class=\"container admin\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-fluid mt-3\">\r\n");
      out.write("\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<style>\r\n");
      out.write("    .alert\r\n");
      out.write("    {\r\n");
      out.write("        font-size: 16px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");

    String message = (String) session.getAttribute("message");
    String message_invalid = (String) session.getAttribute("message_invalid");
    String cat_add_msg = (String) session.getAttribute("cat_add_msg");
    String shop_add_msg = (String) session.getAttribute("shop_add_msg");
    String product_add_msg = (String) session.getAttribute("product_add_msg");
    String logout_msg = (String) session.getAttribute("logout_msg");
    String not_login_checkout = (String) session.getAttribute("not_login_checkout");
    if (message != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message");
    }
 if (not_login_checkout != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(not_login_checkout);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("not_login_checkout");
    }
    if (message_invalid != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message_invalid);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message_invalid");
    }
    if (cat_add_msg != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(cat_add_msg);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");
      out.write("    ");

            session.removeAttribute("cat_add_msg");
        }
        if (shop_add_msg != null) {

    
      out.write("\r\n");
      out.write("    <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("        <strong>");
      out.print(shop_add_msg);
      out.write("</strong>\r\n");
      out.write("    </div>\r\n");
      out.write("        ");

                session.removeAttribute("shop_add_msg");
            }
            if (product_add_msg != null) {

        
      out.write("\r\n");
      out.write("        <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("            <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("            <strong>");
      out.print(product_add_msg);
      out.write("</strong>\r\n");
      out.write("        </div>\r\n");
      out.write("            ");

                    session.removeAttribute("product_add_msg");
                }
                if (logout_msg != null) {

            
      out.write("\r\n");
      out.write("            <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("                <strong>");
      out.print(logout_msg);
      out.write("</strong>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");

                    session.removeAttribute("logout_msg");
                }
            
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row mt-3\">\r\n");
      out.write("\r\n");
      out.write("                <!--first column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--first box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/list.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(clist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Categories</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/product.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(plist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Products</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--third column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:122px;\" class=\"img-fluid \" src=\"assets/img/shop.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(slist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Shops</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--second row-->\r\n");
      out.write("            <div class=\"row mt-3\" >\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\" data-toggle=\"modal\" data-target=\"#add-category-model\">\r\n");
      out.write("\r\n");
      out.write("                        <!--third box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/calculator.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to add new category</p>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Add category</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\" data-toggle=\"modal\" data-target=\"#add-product-model\">\r\n");
      out.write("\r\n");
      out.write("                        <!--third box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/plus.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to add new product</p>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Add Product</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--third column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\" data-toggle=\"modal\" data-target=\"#add-shop-model\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:122px;\" class=\"img-fluid \" src=\"assets/img/shop.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("                            <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to add new shop</p>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Add Shop</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row mt-3\" >\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\" data-toggle=\"modal\" data-target=\"#add-d_boy-model\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:122px;\" class=\"img-fluid \" src=\"assets/img/shop.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("                            <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to add delievery boy</p>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Add Delievery boy</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
}
            } catch (Exception ex) {
                out.println("djdj");
            }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Shopkeeper")) {
        
      out.write("\r\n");
      out.write("        <div style=\"margin-bottom: 20px;\" class=\"container admin\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-fluid mt-3\">\r\n");
      out.write("\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<style>\r\n");
      out.write("    .alert\r\n");
      out.write("    {\r\n");
      out.write("        font-size: 16px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");

    String message = (String) session.getAttribute("message");
    String message_invalid = (String) session.getAttribute("message_invalid");
    String cat_add_msg = (String) session.getAttribute("cat_add_msg");
    String shop_add_msg = (String) session.getAttribute("shop_add_msg");
    String product_add_msg = (String) session.getAttribute("product_add_msg");
    String logout_msg = (String) session.getAttribute("logout_msg");
    String not_login_checkout = (String) session.getAttribute("not_login_checkout");
    if (message != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message");
    }
 if (not_login_checkout != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(not_login_checkout);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("not_login_checkout");
    }
    if (message_invalid != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message_invalid);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message_invalid");
    }
    if (cat_add_msg != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(cat_add_msg);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");
      out.write("    ");

            session.removeAttribute("cat_add_msg");
        }
        if (shop_add_msg != null) {

    
      out.write("\r\n");
      out.write("    <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("        <strong>");
      out.print(shop_add_msg);
      out.write("</strong>\r\n");
      out.write("    </div>\r\n");
      out.write("        ");

                session.removeAttribute("shop_add_msg");
            }
            if (product_add_msg != null) {

        
      out.write("\r\n");
      out.write("        <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("            <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("            <strong>");
      out.print(product_add_msg);
      out.write("</strong>\r\n");
      out.write("        </div>\r\n");
      out.write("            ");

                    session.removeAttribute("product_add_msg");
                }
                if (logout_msg != null) {

            
      out.write("\r\n");
      out.write("            <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("                <strong>");
      out.print(logout_msg);
      out.write("</strong>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");

                    session.removeAttribute("logout_msg");
                }
            
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row mt-3\">\r\n");
      out.write("\r\n");
      out.write("                <!--first column-->\r\n");
      out.write("                <div class=\"col-md-6\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--first box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/list.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(clist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Categories</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-6\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/product.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(plist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Products</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--second row-->\r\n");
      out.write("            <div class=\"row mt-3\" >\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-6\">\r\n");
      out.write("                    <div class=\"card\" data-toggle=\"modal\" data-target=\"#add-category-model\">\r\n");
      out.write("\r\n");
      out.write("                        <!--third box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/calculator.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to add new category</p>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Add category</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-6\">\r\n");
      out.write("                    <div class=\"card\" data-toggle=\"modal\" data-target=\"#add-product-model-shop\">\r\n");
      out.write("\r\n");
      out.write("                        <!--third box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/plus.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to add new product</p>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Add Product</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <!--start add product model-->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("            <!-- The Modal -->\r\n");
      out.write("            <div class=\"modal fade\" id=\"add-product-model-shop\">\r\n");
      out.write("                <div class=\"modal-dialog model-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal Header -->\r\n");
      out.write("                        <div class=\"modal-header custom-bg\">\r\n");
      out.write("                            <h4 class=\"modal-title text-white\">Fill product details</h4>\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal body -->\r\n");
      out.write("                        <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                            <form action=\"ProductOperation\" id=\"add_product\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"operation\" value=\"addproduct\" />\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"pname\" placeholder=\"Enter product name\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"punit\" placeholder=\"Stock per order: Ex: 1 Kg,10 Liter, 100 ml\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <textarea style=\"height: 150px;\" type=\"text\" class=\"form-control\" name=\"pdesc\" placeholder=\"Enter product description\" required ></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input  type=\"number\" class=\"form-control\" name=\"pprice\" placeholder=\"Enter product price\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control\" name=\"pdiscount\" placeholder=\"Enter product discount\" required >\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control\" name=\"pquantity\" placeholder=\"Enter product quantity\" required >\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                               ");

                                    List<Category> categories1 = CategoryDAO.viewAll();
                                
      out.write("\r\n");
      out.write("                                <div class=\"form-group\" style=\"padding-bottom: 20px;\">\r\n");
      out.write("                                    <select name=\"categoryId\" class=\"form-control\" id=\"categoryId\" required>\r\n");
      out.write("                                        <option value=\"none\" selected disabled hidden>Select a category</option> \r\n");
      out.write("                                        ");

                                            for (Category obj : categories1) {
                                        
      out.write("\r\n");
      out.write("                                        \r\n");
      out.write("                                        <option value=\"");
      out.print(obj.getCategoryId());
      out.write('"');
      out.write('>');
      out.print(obj.getCategoryTitle());
      out.write("</option>\r\n");
      out.write("                                        ");
}
      out.write("\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                    <p id=\"p1\"></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                        \r\n");
      out.write("                                <div class=\"form-group\" style=\"padding-bottom: 20px;\">\r\n");
      out.write("                                    <select name=\"shop_id\" class=\"form-control\" required id=\"shop_id\">\r\n");
      out.write("                                        ");

                                            Shop shops1 = ShopDAO.viewSingle(email);
                                        
      out.write("\r\n");
      out.write("                                        <option value=\"none\" selected disabled hidden>Select a shop</option> \r\n");
      out.write("                                        <option value=\"");
      out.print(shops1.getShopId());
      out.write('"');
      out.write('>');
      out.print(shops1.getShopName());
      out.write("</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                    <p id=\"p2\"></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"pPhoto\">Select Picture of your product</label>\r\n");
      out.write("\r\n");
      out.write("                                    <input type=\"file\" class=\"form-control\" name=\"pphoto\" required=\"\" />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"container text-center\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-success\">Add product</button>\r\n");
      out.write("                                    <button id=\"product_close\" type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>                    \r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--end add product model-->\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
}
            } catch (Exception ex) {
                out.println("djdjdj");
            }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

            try {
                String user_type = (String) session.getAttribute("user_type");
                if (user_type.equals("Customer")) {
        
      out.write("\r\n");
      out.write("        <div style=\"padding-bottom: 20px;\" class=\"container admin\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-fluid mt-3\">\r\n");
      out.write("\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<style>\r\n");
      out.write("    .alert\r\n");
      out.write("    {\r\n");
      out.write("        font-size: 16px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");

    String message = (String) session.getAttribute("message");
    String message_invalid = (String) session.getAttribute("message_invalid");
    String cat_add_msg = (String) session.getAttribute("cat_add_msg");
    String shop_add_msg = (String) session.getAttribute("shop_add_msg");
    String product_add_msg = (String) session.getAttribute("product_add_msg");
    String logout_msg = (String) session.getAttribute("logout_msg");
    String not_login_checkout = (String) session.getAttribute("not_login_checkout");
    if (message != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message");
    }
 if (not_login_checkout != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(not_login_checkout);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("not_login_checkout");
    }
    if (message_invalid != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message_invalid);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message_invalid");
    }
    if (cat_add_msg != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(cat_add_msg);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");
      out.write("    ");

            session.removeAttribute("cat_add_msg");
        }
        if (shop_add_msg != null) {

    
      out.write("\r\n");
      out.write("    <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("        <strong>");
      out.print(shop_add_msg);
      out.write("</strong>\r\n");
      out.write("    </div>\r\n");
      out.write("        ");

                session.removeAttribute("shop_add_msg");
            }
            if (product_add_msg != null) {

        
      out.write("\r\n");
      out.write("        <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("            <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("            <strong>");
      out.print(product_add_msg);
      out.write("</strong>\r\n");
      out.write("        </div>\r\n");
      out.write("            ");

                    session.removeAttribute("product_add_msg");
                }
                if (logout_msg != null) {

            
      out.write("\r\n");
      out.write("            <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("                <strong>");
      out.print(logout_msg);
      out.write("</strong>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");

                    session.removeAttribute("logout_msg");
                }
            
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row mt-3\">\r\n");
      out.write("\r\n");
      out.write("                <!--first column-->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <a href=\"product.jsp\">\r\n");
      out.write("                        <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                            <!--first box-->\r\n");
      out.write("                            <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"container\">\r\n");
      out.write("                                    <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/list.png\" alt=\"user_icon\" />\r\n");
      out.write("                                </div> \r\n");
      out.write("\r\n");
      out.write("                                <h1>");
      out.print(clist.size());
      out.write("</h1>\r\n");
      out.write("                                <h1 class=\"text-uppercase text-muted\">Categories</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <!--second column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/product.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(plist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Products</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!--third column-->\r\n");
      out.write("                <div class=\"col-md-4\">\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                        <!--second box-->\r\n");
      out.write("                        <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"container\">\r\n");
      out.write("                                <img style=\"max-width:122px;\" class=\"img-fluid \" src=\"assets/img/shop.png\" alt=\"user_icon\" />\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("                            <h1>");
      out.print(slist.size());
      out.write("</h1>\r\n");
      out.write("                            <h1 class=\"text-uppercase text-muted\">Shops</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
}
            } catch (Exception ex) {
                out.println("donee");
            }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

            try {
                String user_type = (String) session.getAttribute("user_type");
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
                        if (user_type.equals("Delivery boy")) {
        
      out.write("\r\n");
      out.write("        <div style=\"margin-bottom: 20px;\" class=\"container admin\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-fluid mt-3\">\r\n");
      out.write("\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<style>\r\n");
      out.write("    .alert\r\n");
      out.write("    {\r\n");
      out.write("        font-size: 16px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");

    String message = (String) session.getAttribute("message");
    String message_invalid = (String) session.getAttribute("message_invalid");
    String cat_add_msg = (String) session.getAttribute("cat_add_msg");
    String shop_add_msg = (String) session.getAttribute("shop_add_msg");
    String product_add_msg = (String) session.getAttribute("product_add_msg");
    String logout_msg = (String) session.getAttribute("logout_msg");
    String not_login_checkout = (String) session.getAttribute("not_login_checkout");
    if (message != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message");
    }
 if (not_login_checkout != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(not_login_checkout);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("not_login_checkout");
    }
    if (message_invalid != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message_invalid);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message_invalid");
    }
    if (cat_add_msg != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(cat_add_msg);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");
      out.write("    ");

            session.removeAttribute("cat_add_msg");
        }
        if (shop_add_msg != null) {

    
      out.write("\r\n");
      out.write("    <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("        <strong>");
      out.print(shop_add_msg);
      out.write("</strong>\r\n");
      out.write("    </div>\r\n");
      out.write("        ");

                session.removeAttribute("shop_add_msg");
            }
            if (product_add_msg != null) {

        
      out.write("\r\n");
      out.write("        <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("            <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("            <strong>");
      out.print(product_add_msg);
      out.write("</strong>\r\n");
      out.write("        </div>\r\n");
      out.write("            ");

                    session.removeAttribute("product_add_msg");
                }
                if (logout_msg != null) {

            
      out.write("\r\n");
      out.write("            <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("                <strong>");
      out.print(logout_msg);
      out.write("</strong>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");

                    session.removeAttribute("logout_msg");
                }
            
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row mt-3\">\r\n");
      out.write("\r\n");
      out.write("                    <!--second column-->\r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <a href=\"view_messages.jsp\">\r\n");
      out.write("                            <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                                <!--third box-->\r\n");
      out.write("                                <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"container\">\r\n");
      out.write("                                        <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/people.png\" alt=\"user_icon\" />\r\n");
      out.write("                                    </div> \r\n");
      out.write("\r\n");
      out.write("                                    <p class=\"mt-2\" style=\"font-size: 15px;\">Click Here to view a messages</p>\r\n");
      out.write("                                    <h1 class=\"text-uppercase text-muted\">View messages</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!--second column-->\r\n");
      out.write("                    <div class=\"col-md-4\">\r\n");
      out.write("                        <a href=\"received_orders.jsp\">\r\n");
      out.write("                            <div class=\"card\">\r\n");
      out.write("\r\n");
      out.write("                                <!--third box-->\r\n");
      out.write("                                <div class=\"card-body text-center\">\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"container\">\r\n");
      out.write("                                        <img style=\"max-width:110px;\" class=\"img-fluid \" src=\"assets/img/people.png\" alt=\"user_icon\" />\r\n");
      out.write("                                    </div> \r\n");
      out.write("                                    <h1 class=\"text-uppercase text-muted\">Received orders</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        ");
                }
            } catch (Exception ex) {

            }
        
      out.write("\r\n");
      out.write("        <!--add category model-->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("            <!-- The Modal -->\r\n");
      out.write("            <div class=\"modal fade\" id=\"add-category-model\">\r\n");
      out.write("                <div class=\"modal-dialog model-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal Header -->\r\n");
      out.write("                        <div class=\"modal-header custom-bg\">\r\n");
      out.write("                            <h4 class=\"modal-title text-white\">Fill category details</h4>\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal body -->\r\n");
      out.write("                        <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                            <form action=\"ProductOperationsjsp.jsp\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"operation\" value=\"addcategory\" />\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"catTitle\" placeholder=\"Enter category title\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <textarea style=\"height: 150px;\" type=\"text\" class=\"form-control\" name=\"catDescription\" placeholder=\"Enter category description\" required ></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"container text-center\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-success\">Add category</button>\r\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            </form>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--end aadd category model\r\n");
      out.write("        \r\n");
      out.write("        ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\r\n");
      out.write("        \r\n");
      out.write("        <!--start add product model-->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("            <!-- The Modal -->\r\n");
      out.write("            <div class=\"modal fade\" id=\"add-product-model\">\r\n");
      out.write("                <div class=\"modal-dialog model-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal Header -->\r\n");
      out.write("                        <div class=\"modal-header custom-bg\">\r\n");
      out.write("                            <h4 class=\"modal-title text-white\">Fill product details</h4>\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal body -->\r\n");
      out.write("                        <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                            <form action=\"ProductOperation\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"operation\" value=\"addproduct\" encytype=\"multipart/form-data\" />\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"pname\" placeholder=\"Enter product name\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"punit\" placeholder=\"Stock per order: Ex: 1 Kg,10 Liter, 100 ml\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <textarea style=\"height: 150px;\" type=\"text\" class=\"form-control\" name=\"pdesc\" placeholder=\"Enter product description\" required ></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input  type=\"number\" class=\"form-control\" name=\"pprice\" placeholder=\"Enter product price\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control\" name=\"pdiscount\" placeholder=\"Enter product discount\" required >\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control\" name=\"pquantity\" placeholder=\"Enter product quantity\" required >\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                ");

                                    List<Category> categories = CategoryDAO.viewAll();
                                
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <select name=\"categoryId\" class=\"form-control\" id=\"\" required>\r\n");
      out.write("                                        ");

                                            for (Category obj : categories) {
                                        
      out.write("\r\n");
      out.write("                                        <option value=\"none\" selected disabled hidden>Select a category</option> \r\n");
      out.write("                                        <option value=\"");
      out.print(obj.getCategoryId());
      out.write('"');
      out.write('>');
      out.print(obj.getCategoryTitle());
      out.write("</option>\r\n");
      out.write("                                        }\r\n");
      out.write("                                        ");
}
      out.write("\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                ");

                                    List<Shop> shops = ShopDAO.viewAll();
                                
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <select name=\"shop_id\" class=\"form-control\" required id=\"\">\r\n");
      out.write("                                        ");

                                            for (Shop obj : shops) {
                                        
      out.write("\r\n");
      out.write("                                        <option value=\"none\" selected disabled hidden>Select a shop</option> \r\n");
      out.write("                                        <option value=\"");
      out.print(obj.getShopId());
      out.write('"');
      out.write('>');
      out.print(obj.getShopName());
      out.write("</option>\r\n");
      out.write("                                        }\r\n");
      out.write("                                        ");
}
      out.write("\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"pPhoto\">Select Picture of your product</label>\r\n");
      out.write("\r\n");
      out.write("                                    <input type=\"file\" class=\"form-control\" name=\"pphoto\" required=\"\" />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"container text-center\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-success\">Add product</button>\r\n");
      out.write("                                    <button id=\"product_close\" type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>                    \r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--end add product model-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!--start add shop model-->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("            <!-- The Modal -->\r\n");
      out.write("            <div class=\"modal fade\" id=\"add-d_boy-model\">\r\n");
      out.write("                <div class=\"modal-dialog model-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal Header -->\r\n");
      out.write("                        <div class=\"modal-header custom-bg\">\r\n");
      out.write("                            <h4 class=\"modal-title text-white\">Fill delivery boy details</h4>\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal body -->\r\n");
      out.write("                        <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                            <form action=\"ProductOperationsjsp.jsp\" method=\"post\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"operation\" value=\"add_d_boy\" />\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"db_email\" placeholder=\"Enter delivery boy email\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" name=\"db_pass\" placeholder=\"Enter delivery boy password\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"db_name\" placeholder=\"Enter delivery boy name\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"db_city\" placeholder=\"Enter delivery boy city\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input  type=\"text\" class=\"form-control\" name=\"db_phone\" placeholder=\"Enter delivery boy phone\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <textarea type=\"text\" class=\"form-control\" name=\"db_address\" placeholder=\"Enter delivery boy address\" required ></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"container text-center\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-success\">Add delivery boy</button>\r\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>     \r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--start add shop model-->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("            <!-- The Modal -->\r\n");
      out.write("            <div class=\"modal fade\" id=\"add-shop-model\">\r\n");
      out.write("                <div class=\"modal-dialog model-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal Header -->\r\n");
      out.write("                        <div class=\"modal-header custom-bg\">\r\n");
      out.write("                            <h4 class=\"modal-title text-white\">Fill shop details</h4>\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Modal body -->\r\n");
      out.write("                        <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                            <form action=\"ProductOperationsjsp.jsp\" method=\"post\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"operation\" value=\"addshop\" />\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"shop_owner\" placeholder=\"Enter shop owner\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"shop_name\" placeholder=\"Enter shop name\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"shop_email\" placeholder=\"Enter shop email\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input  type=\"text\" class=\"form-control\" name=\"shop_phone\" placeholder=\"Enter shop phone\" required />\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <input type=\"hidden\" name=\"status\" value=\"availabel\" />   \r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <textarea type=\"text\" class=\"form-control\" name=\"shop_detail\" placeholder=\"Enter shop details\" required ></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"container text-center\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-success\">Add shop</button>\r\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>     \r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <script src=\"js/vendor/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("        <script src=\"../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js\"\r\n");
      out.write("                integrity=\"sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"js/jquery.ajaxchimp.min.js\"></script>\r\n");
      out.write("        <script src=\"js/jquery.nice-select.min.js\"></script>\r\n");
      out.write("        <script src=\"js/jquery.sticky.js\"></script>\r\n");
      out.write("        <script src=\"js/nouislider.min.js\"></script>\r\n");
      out.write("        <script src=\"js/countdown.js\"></script>\r\n");
      out.write("        <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\r\n");
      out.write("        <script src=\"js/gmaps.min.js\"></script>\r\n");
      out.write("        <script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            window.dataLayer = window.dataLayer || [];\r\n");
      out.write("            function gtag() {\r\n");
      out.write("                dataLayer.push(arguments);\r\n");
      out.write("            }\r\n");
      out.write("            gtag('js', new Date());\r\n");
      out.write("            gtag('config', 'UA-23581568-13');\r\n");
      out.write("        </script>\r\n");
      out.write("        <script defer src=\"../../../static.cloudflareinsights.com/beacon.min.js\"\r\n");
      out.write("        data-cf-beacon='{\"version\":\"2021.2.0\",\"si\":10,\"rayId\":\"62fb204e0dc00fce\"}'></script>\r\n");
      out.write("        <!--        <script src=\"css_js_files/jquery.min.js\"></script>-->\r\n");
      out.write("        <script src=\"css_js_files/popper.min.js\"></script>\r\n");
      out.write("        ");
      out.write("<!-- Modal -->\n");
      out.write("<div class=\"modal fade\" id=\"cart\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog modal-lg\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Your cart</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        \n");
      out.write("          <div class=\"cart-body\">\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        <button type=\"button\" onclick=\"goToCheckout()\" class=\"btn btn-primary checkout-btn\">Checkout</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>");
      out.write(" \r\n");
      out.write("    </body>\r\n");
      out.write("    <!--end add product model-->\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
