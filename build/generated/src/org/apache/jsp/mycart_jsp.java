package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Pojo.Category;
import Pojo.Shop;
import Pojo.Cart;
import Pojo.DeliveryBoy;
import java.util.List;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.sql.Connection;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.*;
import javax.servlet.http.HttpSession;

public final class mycart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
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
      out.write("\r\n");
      out.write("\r\n");

    HttpSession httpSession = request.getSession();
    String login_or_not = (String) session.getAttribute("login_or_not");
    if (login_or_not != null) {

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>My Cart</title>\r\n");
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
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("    <section class=\"banner-area organic-breadcrumb\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end\">\r\n");
      out.write("                <div class=\"col-first\">\r\n");
      out.write("                    <h2 class=\"text-white\">");
      out.print(login_or_not);
      out.write("'s cart</h2>\r\n");
      out.write("                    <nav class=\"d-flex align-items-center\">\r\n");
      out.write("                        <a href=\"index-2.html\">Home<span class=\"lnr lnr-arrow-right\"></span></a>\r\n");
      out.write("                        <a href=\"category.html\">Cart</a>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "message.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dashboardNavbar/customer_nav.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
String email = (String) session.getAttribute("login_or_not");
      out.write("\r\n");
      out.write("    ");

        int total = 0;
        int sno = 0;
        try {
            Connection conn = DBConnect_JDBC.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
            while (rs1.next()) {
                total = rs1.getInt(1);
            }

    
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <section class=\"cart_area\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"cart_inner\">\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                    <table class=\"table\">\r\n");
      out.write("                        <thead>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th scope=\"col\">Product</th>\r\n");
      out.write("                                <th scope=\"col\">Shop</th>\r\n");
      out.write("                                <th scope=\"col\">Quantity</th>\r\n");
      out.write("                                <th scope=\"col\">Price</th>\r\n");
      out.write("                                <th scope=\"col\">Discount</th>\r\n");
      out.write("                                <th scope=\"col\">Total</th>\r\n");
      out.write("                                <th scope=\"col\">Action</th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        ");
if (total == 0) {
      out.write("<h3>Products are not selected</h3>");
}
      out.write("\r\n");
      out.write("                        ");

                            ResultSet rs = st.executeQuery("select * from product inner join cart on product.pid=cart.p_id and cart.email='" + email + "' and cart.address is NULL");
                            while (rs.next()) {
                                Shop sh = ShopDAO.getShopId(Long.parseLong(rs.getString(9)));
                                Category ct = CategoryDAO.getCategoryId(Long.parseLong(rs.getString(8)));
                        
      out.write("\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <div class=\"media\">\r\n");
      out.write("                                        <div class=\"d-flex\">\r\n");
      out.write("                                            <img src=\"images/products/");
      out.print(rs.getString(4));
      out.write("\" alt=\"\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"media-body\">\r\n");
      out.write("                                            <p>");
      out.print(rs.getString(2));
      out.write("</p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <p>");
      out.print(sh.getShopName());
      out.write("</p>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td><a href=\"inc_dec_quantity.jsp?id=");
      out.print(rs.getString(1));
      out.write("&quantity=dec\"><i style=\"color:#ffc107;\" class=\"fa fa-minus-circle\"></i></a> <strong>");
      out.print(rs.getString(14));
      out.write("</strong> <a href=\"inc_dec_quantity.jsp?id=");
      out.print(rs.getString(1));
      out.write("&quantity=inc\"><i style=\"color:#ffc107;\" class=\"fa fa-plus-circle\"></i></a></td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <h5>");
      out.print(rs.getString(5));
      out.write("</h5>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <h5>");
      out.print(rs.getString(6) + "%");
      out.write("</h5>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <h5>");
      out.print(rs.getString(16));
      out.write("</h5>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td><a href='removefromcart.jsp?id=");
      out.print(rs.getString(1));
      out.write("'><button type=\"button\" class=\"btn btn-danger\">Remove</button></a></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            ");

                                    }
                                } catch (Exception ex) {
                                    httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
                                    response.sendRedirect("login.jsp");
                                }
                            
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <h5>Subtotal</h5>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <h5><i class=\"fa fa-inr\">");
out.println(total);
      out.write("</h5>\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr class=\"out_button_area\">\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td></td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                    <div class=\"checkout_btn_inner d-flex align-items-center\">\r\n");
      out.write("                                        <a class=\"gray_btn\" href=\"product.jsp\">Continue Shopping</a>\r\n");
      out.write("                                        <a class=\"primary-btn\" href=\"addressPaymentfororder.jsp\">Proceed to checkout</a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("    <script src=\"js/vendor/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("    <script src=\"../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js\"\r\n");
      out.write("            integrity=\"sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4\"\r\n");
      out.write("    crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.ajaxchimp.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.nice-select.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.sticky.js\"></script>\r\n");
      out.write("    <script src=\"js/nouislider.min.js\"></script>\r\n");
      out.write("    <script src=\"js/countdown.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\r\n");
      out.write("    <script src=\"js/gmaps.min.js\"></script>\r\n");
      out.write("    <script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        window.dataLayer = window.dataLayer || [];\r\n");
      out.write("        function gtag() {\r\n");
      out.write("            dataLayer.push(arguments);\r\n");
      out.write("        }\r\n");
      out.write("        gtag('js', new Date());\r\n");
      out.write("        gtag('config', 'UA-23581568-13');\r\n");
      out.write("    </script>\r\n");
      out.write("    <script defer src=\"../../../static.cloudflareinsights.com/beacon.min.js\"\r\n");
      out.write("    data-cf-beacon='{\"version\":\"2021.2.0\",\"si\":10,\"rayId\":\"62fb204e0dc00fce\"}'></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");

    } else {
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }

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
