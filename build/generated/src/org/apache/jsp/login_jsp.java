package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/message.jsp");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"zxx\" class=\"no-js\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/fav.png\">\r\n");
      out.write("\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("\r\n");
      out.write("        <title>Karma Shop</title>\r\n");
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
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <header class=\"header_area sticky-header\">\r\n");
      out.write("            <div class=\"main_menu\">\r\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                        <a class=\"navbar-brand logo\" href=\"index.html\">Online Kirana Store</a>\r\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\n");
      out.write("                                aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\r\n");
      out.write("                            <ul class=\"nav navbar-nav menu_nav ml-auto\">\r\n");
      out.write("                                <li class=\"nav-item active\"><a class=\"nav-link\" href=\"index-2.html\">Home</a></li>\r\n");
      out.write("                                <!-- <li class=\"nav-item submenu dropdown\">\r\n");
      out.write("                                  <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("                                    aria-expanded=\"false\">Shop</a>\r\n");
      out.write("                                  <ul class=\"dropdown-menu\">\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"category.html\">Shop Category</a></li>\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"single-product.html\">Product Details</a></li>\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"checkout.html\">Product Checkout</a></li>\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"cart.html\">Shopping Cart</a></li>\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"confirmation.html\">Confirmation</a></li>\r\n");
      out.write("                                  </ul>\r\n");
      out.write("                                </li> -->\r\n");
      out.write("                                <!-- <li class=\"nav-item submenu dropdown\">\r\n");
      out.write("                                  <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("                                    aria-expanded=\"false\">Pages</a>\r\n");
      out.write("                                  <ul class=\"dropdown-menu\">\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.html\">Login</a></li>\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"tracking.html\">Tracking</a></li>\r\n");
      out.write("                                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"elements.html\">Elements</a></li>\r\n");
      out.write("                                  </ul>\r\n");
      out.write("                                </li> -->\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"dashboard.html\">Dashboard</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.html\">Sign Up</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.html\">Login</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.html\">Contact</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                                <li class=\"nav-item\"><a href=\"#\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\r\n");
      out.write("                                <li class=\"nav-item\">\r\n");
      out.write("                                    <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"search_input\" id=\"search_input_box\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <form class=\"d-flex justify-content-between\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search Here\">\r\n");
      out.write("                        <button type=\"submit\" class=\"btn\"></button>\r\n");
      out.write("                        <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <section class=\"banner-area organic-breadcrumb\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end\">\r\n");
      out.write("                    <div class=\"col-first\">\r\n");
      out.write("                        <h1>Login</h1>\r\n");
      out.write("                        <nav class=\"d-flex align-items-center\">\r\n");
      out.write("                            <a href=\"index.html\">Home<span class=\"lnr lnr-arrow-right\"></span></a>\r\n");
      out.write("                            <a href=\"login.html\">Login</a>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <section class=\"login_box_area section_gap\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-6\">\r\n");
      out.write("                        <div class=\"login_box_img\">\r\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/login.jpg\" alt=\"\">\r\n");
      out.write("                            <div class=\"hover\">\r\n");
      out.write("                                <h4>New to our website?</h4>\r\n");
      out.write("                                <!-- <p>There are advances being made in science and technology everyday, and a good example of this is the</p> -->\r\n");
      out.write("                                <a class=\"primary-btn\" href=\"register.html\">Create an Account</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-6\">\r\n");
      out.write("                        <div class=\"login_form_inner\">\r\n");
      out.write("                            ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
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
      out.write("                            <h3>Log in to enter</h3>\r\n");
      out.write("                            <form class=\"row login_form\" action=\"login_data.jsp\" method=\"post\" id=\"login_form\">\r\n");
      out.write("                                <div class=\"col-md-12 form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"userEmail\" name=\"userEmail\" placeholder=\"Username\"\r\n");
      out.write("                                           onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Username'\">            \r\n");
      out.write("                                    <p id=\"p1\"></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-md-12 form-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"userPassword\" name=\"userPassword\" placeholder=\"Password\"\r\n");
      out.write("                                           onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Password'\">\r\n");
      out.write("                                    <p id=\"p2\"></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-select\" id=\"default-select\">\r\n");
      out.write("                                    <select name=\"user_type\" id=\"user_type\">\r\n");
      out.write("                                        <option value=\"none\">Select user type</option>\r\n");
      out.write("                                        <option value=\"Admin\">Admin</option>\r\n");
      out.write("                                        <option value=\"Customer\">Customer</option>\r\n");
      out.write("                                        <option value=\"Delivery Boy\">Delivery Boy</option>\r\n");
      out.write("                                        <option value=\"Shopkeeper\">Shopkeeper</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                    <p id=\"p3\"></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <br></br>\r\n");
      out.write("                                <!--              <div class=\"col-md-12 form-group\">\r\n");
      out.write("                                                <div class=\"creat_account\">\r\n");
      out.write("                                                  <input type=\"checkbox\" id=\"f-option2\" name=\"selector\">\r\n");
      out.write("                                                  <label for=\"f-option2\">Keep me logged in</label>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                              </div>-->\r\n");
      out.write("                                <div class=\"col-md-12 form-group\">\r\n");
      out.write("                                    <button type=\"submit\" value=\"submit\" class=\"primary-btn\">Log In</button>\r\n");
      out.write("                                    <a href=\"#\">Forgot Password?</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("        <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\r\n");
      out.write("        <script src=\"js/gmaps.min.js\"></script>\r\n");
      out.write("        <script src=\"js/main.js\"></script>\r\n");
      out.write("        <script src=\"js/script.js\"></script>\r\n");
      out.write("        <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("                                               window.dataLayer = window.dataLayer || [];\r\n");
      out.write("                                               function gtag() {\r\n");
      out.write("                                                   dataLayer.push(arguments);\r\n");
      out.write("                                               }\r\n");
      out.write("                                               gtag('js', new Date());\r\n");
      out.write("\r\n");
      out.write("                                               gtag('config', 'UA-23581568-13');\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
