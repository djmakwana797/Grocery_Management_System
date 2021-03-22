package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.ShopDAO;
import Pojo.Shop;
import Util.Helper;
import DAO.CategoryDAO;
import Pojo.Category;
import Util.HibernateUtil;
import Pojo.Product;
import java.util.List;
import DAO.ProductDAO;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
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
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            $(\"document\").ready(function ()\r\n");
      out.write("            {\r\n");
      out.write("                $('#cart').on('hidden.bs.modal', function () {\r\n");
      out.write("                    $('#cart form')[0].reset();\r\n");
      out.write("\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("        <title>Products</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body id=\"category\">\r\n");
      out.write("        <header class=\"header_area sticky-header\">\r\n");
      out.write("            <div class=\"main_menu\">\r\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                        <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\r\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\n");
      out.write("                                aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                        </button>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\r\n");
      out.write("                            <ul class=\"nav navbar-nav menu_nav ml-auto\">\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                                <li class=\"nav-item active\"><a class=\"nav-link\" href=\"product.jsp\">Products</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"register.jsp\">Sign Up</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\">Login</a></li>\r\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\r\n");
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
      out.write("        \r\n");
      out.write("        <section class=\"banner-area organic-breadcrumb\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end\">\r\n");
      out.write("                    <div class=\"col-first\">\r\n");
      out.write("                        <h1>Products</h1>\r\n");
      out.write("                        <nav class=\"d-flex align-items-center\">\r\n");
      out.write("                            <a href=\"index.jsp\">Home<span class=\"lnr lnr-arrow-right\"></span></a>\r\n");
      out.write("                            <a href=\"product.jsp\">Login</a>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"container-fluid mb-5\">\r\n");
      out.write("            ");
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
      out.write("            <div class=\"row mt-3 mx-2\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                ");
  
                    
                    String cat = request.getParameter("category");
                    String shop = request.getParameter("shop");
                    new HibernateUtil(HibernateUtil.getSessionFactory());
                    List<Product> plist = null;
                    
                    if (cat == null || shop == null || shop.trim().equals("all") || cat.trim().equals("all")) {
                        plist = ProductDAO.getAllProducts();
                    }if(cat!=null){
                        long cid = Long.parseLong(cat);
                        plist = ProductDAO.getAllProductsById(cid);
                    }
                    if(shop!=null)
                    {
                        long cid = Long.parseLong(shop);
                        plist = ProductDAO.getAllProductsByShopId(cid);
                    }
//                    
//                    String shop = request.getParameter("shop");
//                            new HibernateUtil(HibernateUtil.getSessionFactory());
//                            plist=null;
//                            if (shop == null || shop.trim().equals("all")) {
//                                plist = ProductDAO.getAllProducts();
//                            } else {
//                                long cid = Long.parseLong(shop);
//                                 plist = ProductDAO.getAllProductsByShopId(cid);
//                            }
                    List<Category> clist = CategoryDAO.viewAll();
                
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div style=\"border-radius: 3px;\"class=\"col-md-2\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"list-group mt-4\">\r\n");
      out.write("                        <a href=\"product.jsp?category=all\" class=\"list-group-item list-group-item-action active\">All Categories</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    ");

                        for (Category category : clist) {
                    
      out.write("\r\n");
      out.write("                    <a href=\"product.jsp?category=");
      out.print(category.getCategoryId());
      out.write("\" class=\"list-group-item list-group-item-action\">");
      out.print(category.getCategoryTitle());
      out.write("</a>\r\n");
      out.write("                    ");

                        }
                    
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-10\">\r\n");
      out.write("                    <div class=\"list-group list-group-horizontal-sm\">\r\n");
      out.write("                        <a href=\"product.jsp?shop=all\" class=\"list-group-item list-group-item-action active\">\r\n");
      out.write("                            All shops\r\n");
      out.write("                        </a>\r\n");
      out.write("                        ");

                            
                            List<Shop> sh = ShopDAO.viewAll();
                            for (Shop s : sh) {
                        
      out.write("\r\n");
      out.write("                        <a href=\"product.jsp?shop=");
      out.print(s.getShopId());
      out.write("\" class=\"list-group-item list-group-item-action\">");
      out.print(s.getShopName());
      out.write("</a>\r\n");
      out.write("\r\n");
      out.write("                        ");
  }
                        
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row mt-4\">\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <div class=\"card-columns\">\r\n");
      out.write("                                ");
 for (Product p : plist) {
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <!--product card-->\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"card product-card\">\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"container text-center\">\r\n");
      out.write("\r\n");
      out.write("                                        <img src=\"images/products/");
      out.print(p.getPphoto());
      out.write("\" style=\"max-height:140px; max-width: 100%; width:auto\"  class=\"card-img-top m-2\" alt=\"..\">\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"card-body\">\r\n");
      out.write("                                        <h5 class=\"card-title\">");
      out.print(p.getPname());
      out.write("</h5>\r\n");
      out.write("                                        <p class=\"card-text\">");
      out.print(Helper.get10words(p.getPdesc()));
      out.write("</p>\r\n");
      out.write("                                        <table>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <td><strong>Stock per order</strong></td>\r\n");
      out.write("                                                <td>");
      out.print(p.getPunit());
      out.write("</td>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                        </table>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"card-footer text-center\">\r\n");
      out.write("                                        <a href=\"addtocardAction.jsp?id=");
      out.print(p.getPid());
      out.write("\"><button class=\"btn custom-bg\" >Add to Cart</button></a>\r\n");
      out.write("                                        <button class=\"btn btn-outline-success\">&#8377; ");
      out.print(p.getPriceAfterApplyingDiscount());
      out.write("/-  <span class=\"text-secondary discount-label\"> &#8377;");
      out.print(p.getPprice());
      out.write(" </span><span class=\"discount-label1\">");
      out.print( p.getPdiscount());
      out.write("% off</span></button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                        ");
  }

                                    if (plist.size() == 0) {
                                        out.println("<h3>No Items are available</h3>");
                                    }

                                
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("          <div class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <div class=\"col-xl-3 col-lg-4 col-md-5\">\r\n");
      out.write("        <div class=\"sidebar-categories\">\r\n");
      out.write("          <div class=\"head\">Browse Categories</div>\r\n");
      out.write("          <ul class=\"main-categories\">\r\n");
      out.write("            <li class=\"main-nav-list\"><a data-toggle=\"collapse\" href=\"#fruitsVegetable\" aria-expanded=\"false\"\r\n");
      out.write("                aria-controls=\"fruitsVegetable\"><span class=\"lnr lnr-arrow-right\"></span>Fruits and Vegetables<span\r\n");
      out.write("                  class=\"number\">(53)</span></a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"sidebar-categories\">\r\n");
      out.write("          <div class=\"head\">Browse Shops</div>\r\n");
      out.write("          <ul class=\"main-categories\">\r\n");
      out.write("            <li class=\"main-nav-list\"><a data-toggle=\"collapse\" href=\"#fruitsVegetable\" aria-expanded=\"false\"\r\n");
      out.write("                aria-controls=\"fruitsVegetable\"><span class=\"lnr lnr-arrow-right\"></span>Fruits and Vegetables<span\r\n");
      out.write("                  class=\"number\">(53)</span></a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-xl-9 col-lg-8 col-md-7\">\r\n");
      out.write("\r\n");
      out.write("        <!-- <div class=\"filter-bar d-flex flex-wrap align-items-center\">\r\n");
      out.write("          <div class=\"sorting\">\r\n");
      out.write("            <select>\r\n");
      out.write("              <option value=\"1\">Default sorting</option>\r\n");
      out.write("              <option value=\"1\">Default sorting</option>\r\n");
      out.write("              <option value=\"1\">Default sorting</option>\r\n");
      out.write("            </select>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"sorting mr-auto\">\r\n");
      out.write("            <select>\r\n");
      out.write("              <option value=\"1\">Show 12</option>\r\n");
      out.write("              <option value=\"1\">Show 12</option>\r\n");
      out.write("              <option value=\"1\">Show 12</option>\r\n");
      out.write("            </select>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"pagination\">\r\n");
      out.write("            <a href=\"#\" class=\"prev-arrow\"><i class=\"fa fa-long-arrow-left\" aria-hidden=\"true\"></i></a>\r\n");
      out.write("            <a href=\"#\" class=\"active\">1</a>\r\n");
      out.write("            <a href=\"#\">2</a>\r\n");
      out.write("            <a href=\"#\">3</a>\r\n");
      out.write("            <a href=\"#\" class=\"dot-dot\"><i class=\"fa fa-ellipsis-h\" aria-hidden=\"true\"></i></a>\r\n");
      out.write("            <a href=\"#\">6</a>\r\n");
      out.write("            <a href=\"#\" class=\"next-arrow\"><i class=\"fa fa-long-arrow-right\" aria-hidden=\"true\"></i></a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div> -->\r\n");
      out.write("\r\n");
      out.write("        <section class=\"lattest-product-area pb-40 category-list\">\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-5\">\r\n");
      out.write("              <div class=\"single-product\">\r\n");
      out.write("                <img class=\"img-fluid\" src=\"img/product/p1.jpg\" alt=\"\">\r\n");
      out.write("                <div class=\"product-details\">\r\n");
      out.write("                  <h6>addidas New Hammer sole\r\n");
      out.write("                    for Sports person</h6>\r\n");
      out.write("                  <div class=\"price\">\r\n");
      out.write("                    <h6>$150.00</h6>\r\n");
      out.write("                    <h6 class=\"l-through\">$210.00</h6>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"prd-bottom\">\r\n");
      out.write("                    <a href=\"#\" class=\"social-info\">\r\n");
      out.write("                      <span class=\"ti-bag\"></span>\r\n");
      out.write("                      <p class=\"hover-text\">add to bag</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"#\" class=\"social-info\">\r\n");
      out.write("                      <span class=\"lnr lnr-heart\"></span>\r\n");
      out.write("                      <p class=\"hover-text\">Wishlist</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"#\" class=\"social-info\">\r\n");
      out.write("                      <span class=\"lnr lnr-sync\"></span>\r\n");
      out.write("                      <p class=\"hover-text\">compare</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"#\" class=\"social-info\">\r\n");
      out.write("                      <span class=\"lnr lnr-move\"></span>\r\n");
      out.write("                      <p class=\"hover-text\">view more</p>\r\n");
      out.write("                    </a>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </section>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
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
      out.write("\r\n");
      out.write("            gtag('config', 'UA-23581568-13');\r\n");
      out.write("        </script>\r\n");
      out.write("        <script defer src=\"../../../static.cloudflareinsights.com/beacon.min.js\"\r\n");
      out.write("        data-cf-beacon='{\"version\":\"2021.2.0\",\"si\":10,\"rayId\":\"62fb204e0dc00fce\"}'></script>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</body>\r\n");
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
