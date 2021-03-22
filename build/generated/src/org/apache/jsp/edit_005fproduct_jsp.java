package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.ShopDAO;
import Pojo.Shop;
import Pojo.Category;
import DAO.CategoryDAO;
import Pojo.Product;
import DAO.ProductDAO;

public final class edit_005fproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/assets/css/bootstrap_cdn_links.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/linearicons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nouislider.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("\n");
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
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <title>Edit product</title>\n");
      out.write("        <style>\n");
      out.write("            .col-md-12{\n");
      out.write("                text-align: left;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String id = request.getParameter("id");
            Product pr = ProductDAO.viewSingle_by_Product_id(Long.parseLong(id));
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dashboardNavbar/shopkeeper_nav.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"banner-area organic-breadcrumb\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end\">\n");
      out.write("                    <div class=\"col-first\">\n");
      out.write("                        <h1>Edit products</h1>\n");
      out.write("                        <nav class=\"d-flex align-items-center\">\n");
      out.write("                            <a href=\"index.jsp\">Home<span class=\"lnr lnr-arrow-right\"></span></a>\n");
      out.write("                            <a href=\"shop_vise_products.jsp\">My Products</a>\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section class=\"login_box_area section_gap\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\" style=\"justify-content: center;\"> \n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"login_form_inner\">\n");
      out.write("                            <h3>Edit Product</h3>\n");
      out.write("                            <form class=\"row login_form\" action=\"ProductOperation\" enctype=\"multipart/form-data\" method=\"post\" id=\"reg_form\" class=\"form-horizontal\" role=\"form\">\n");
      out.write("                                ");
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
      out.write("\n");
      out.write("                                <input type=\"hidden\" name=\"operation\" value=\"product_edit\"  />\n");
      out.write("                                <input type=\"hidden\" name=\"shop_id\" value=\"");
      out.print(id);
      out.write("\"  />\n");
      out.write("                                <input type=\"hidden\" name=\"product_id\" value=\"");
      out.print(id);
      out.write("\"  />\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <label for=\"pname\" class=\"control-label\">Product name<span style=\"color: red;\">*</span></label>\n");
      out.write("                                    <input type=\"text\" value=\"");
      out.print(pr.getPname());
      out.write("\" name=\"pname\" placeholder=\"Enter product name\" class=\"form-control\" required />\n");
      out.write("                                    <p id=\"p1\"></p>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <label for=\"pdesc\" class=\"control-label\">Enter product Description<span style=\"color: red;\">*</span></label>\n");
      out.write("                                        <input ype=\"text\" value=\"");
      out.print(pr.getPdesc());
      out.write("\" name=\"pdesc\" placeholder=\"Enter product description\" class=\"form-control\" required/>\n");
      out.write("                                        <p id=\"p1\"></p>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <label for=\"pname\" class=\"control-label\">Product image<span style=\"color: red;\">*</span></label>\n");
      out.write("                                        <img src=\"images/products/");
      out.print(pr.getPphoto());
      out.write("\" style=\"max-height:120px; max-width: 100%; width:auto\"  class=\"card-img-top m-2\" alt=\"..\">\n");
      out.write("                                        <input type=\"file\" name=\"pphoto\" placeholder=\"Choose the image of the product\" />\n");
      out.write("                                        <p id=\"p1\"></p>\n");
      out.write("                                </div> \n");
      out.write("\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <label for=\"pprice\" class=\"control-label\">Product price<span style=\"color: red;\">*</span></label>\n");
      out.write("                                        <input type=\"number\" value=\"");
      out.print(pr.getPprice());
      out.write("\" name=\"pprice\" placeholder=\"Enter Price\" class=\"form-control\" required/>\n");
      out.write("                                        <p id=\"p2\"></p>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <label for=\"pprice\" class=\"control-label\">Enter product discount<span style=\"color: red;\">*</span></label>\n");
      out.write("                                        <input type=\"number\" value=\"");
      out.print(pr.getPdiscount());
      out.write("\" name=\"pdiscount\" placeholder=\"Enter product discount\" class=\"form-control\" required/>\n");
      out.write("                                        <p id=\"p3\"></p>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"pquantity\" class=\"control-label\">Enter product quantity<span style=\"color: red;\">*</span></label>\n");
      out.write("                                        <input type=\"number\" value=\"");
      out.print(pr.getPquantity());
      out.write("\" name=\"pquantity\" placeholder=\"Enter product quanttity\" class=\"form-control\" required/>\n");
      out.write("                                        <p id=\"p5\"></p>\n");
      out.write("                                </div>  \n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    ");

                                        Shop sh = ShopDAO.getShopId(pr.getShopId());
                                    
      out.write("\n");
      out.write("                                    <label for=\"shop_id\" class=\"col-sm-6 control-label\">Shop name<span style=\"color: red;\">*</span></label>\n");
      out.write("                                    <div class=\"col-sm-12\">\n");
      out.write("                                        <select  name=\"shop\" class=\"form-control\" id=\"\" required>\n");
      out.write("                                            <option value=\"");
      out.print(sh.getShopId());
      out.write('"');
      out.write('>');
      out.print(sh.getShopName());
      out.write("</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>  \n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    ");

                                        Category ct = CategoryDAO.getCategoryId(pr.getCategoryId());
                                    
      out.write("\n");
      out.write("                                    <label for=\"categoryId\" class=\"col-sm-6 control-label\">Product category</label>\n");
      out.write("                                    <div class=\"col-sm-12\">\n");
      out.write("                                        <select name=\"categoryId\" class=\"form-control\" id=\"\" required>\n");
      out.write("                                            <option value=\"");
      out.print(ct.getCategoryId());
      out.write('"');
      out.write('>');
      out.print(ct.getCategoryTitle());
      out.write("</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"punit\" class=\"col-sm-6 control-label\">Stock per order<span style=\"color: red;\">*</span></label>\n");
      out.write("                                    <div class=\"col-sm-12\">\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print(pr.getPunit());
      out.write("\" name=\"punit\" placeholder=\"Stock per order: Ex: 1 Kg,10 Liter, 100 ml\" class=\"form-control\" required/>\n");
      out.write("                                        <p id=\"p4\"></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <button id=\"btn\" type=\"submit\" class=\"btn btn-success btn-block\">Submit</button>\n");
      out.write("\n");
      out.write("                            </form> <!-- /form --> </div>    \n");
      out.write("                    </div>     \n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </div> <!-- ./container -->\n");
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"js/vendor/jquery-2.2.4.min.js\"></script>\n");
      out.write("    <script src=\"../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js\"\n");
      out.write("            integrity=\"sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4\"\n");
      out.write("    crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"js/vendor/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.nice-select.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.sticky.js\"></script>\n");
      out.write("    <script src=\"js/nouislider.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\n");
      out.write("    <script src=\"js/gmaps.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    <script src=\"js/script.js\"></script>\n");
      out.write("\n");
      out.write("    <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\n");
      out.write("    <script>\n");
      out.write("                                               window.dataLayer = window.dataLayer || [];\n");
      out.write("                                               function gtag() {\n");
      out.write("                                                   dataLayer.push(arguments);\n");
      out.write("                                               }\n");
      out.write("                                               gtag('js', new Date());\n");
      out.write("\n");
      out.write("                                               gtag('config', 'UA-23581568-13');\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
