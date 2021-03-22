/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.CategoryDAO;
import DAO.ProductDAO;
import DAO.ShopDAO;
import Pojo.Category;
import Pojo.Product;
import Pojo.Shop;
import Util.HibernateUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig
/**
 *
 * @author Dilip J Sarvaiya
 */
@WebServlet(urlPatterns = {"/ProductOperation"})
public class ProductOperation extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String add_type =request.getParameter("operation");
            if(add_type.trim().equals("addproduct"))
            {
                //add product
                String pname =request.getParameter("pname");
                String pdesc =request.getParameter("pdesc");
                long pprice =Long.parseLong(request.getParameter("pprice"));
                long pdiscount =Long.parseLong(request.getParameter("pdiscount"));
                long pquantity =Long.parseLong(request.getParameter("pquantity"));
                long categoryId =Long.parseLong(request.getParameter("categoryId"));
                long shop_id =Long.parseLong(request.getParameter("shop_id"));
                String punit =request.getParameter("punit");
                Part pphoto =request.getPart("pphoto");
                
//              
                new HibernateUtil(HibernateUtil.getSessionFactory());
                
                Category obj = CategoryDAO.getCategoryId(categoryId);
                Shop shop_obj = ShopDAO.getShopId(shop_id);
                
                Product product=new Product(pname,pdesc,pphoto.getSubmittedFileName(),pprice,pdiscount,pquantity,obj.getCategoryId(),shop_obj.getShopId(),punit);

                //Getter and setter
                product.setPname(pname);
                product.setPunit(punit);
                product.setPdesc(pdesc);
                product.setPprice(pprice);
                product.setPdiscount(pdiscount);
                product.setPquantity(pquantity);
                product.setPphoto(pphoto.getSubmittedFileName());
                product.setCategoryId(obj.getCategoryId());
                product.setShopId(shop_obj.getShopId());
           
                //pic upload
                //find out the path to upload photo
                
                String path=request.getRealPath("images")+File.separator+"products"+File.separator+pphoto.getSubmittedFileName();
               
                int pid=(int)ProductDAO.save(product);
                HttpSession httpSession=request.getSession();
                httpSession.setAttribute("product_add_msg", "Product added successfully Product id is: "+pid);
                response.sendRedirect("dashboard.jsp");
                
                //uploading code
                try {
                   
                    FileOutputStream fos=new FileOutputStream(path);
                    InputStream is=pphoto.getInputStream();

                    //reading data

                    byte [] data = new byte[is.available()];
                    is.read(data);

                    //writing the data
                    fos.write(data);
                    
                    //close the FileoutputStream
                    fos.close();
                } catch (Exception e) {
                }
        }
        if(add_type.trim().equals("product_edit"))
            {
                
                /*
                User obj = UsersDAO.viewSingle(userEmail);
            
            if (obj != null) {
                User bean=new User(userEmail,userconfPassword);
                
                bean.setUserId(obj.getUserId());
                bean.setUserName(obj.getUserName());
                bean.setUserAddress(obj.getUserAddress());
                bean.setUserPhone(obj.getUserPhone());
                bean.setUserType(obj.getUserType());
                
                UsersDAO.update(bean);
                httpSession.setAttribute("logout_msg", "Password updated successfully!..");
                response.sendRedirect("login.jsp");
            } else {
                httpSession.setAttribute("message_invalid", "There is no such user..!");
                response.sendRedirect("password_update.jsp");
            }
                */
                //add product
                String pname =request.getParameter("pname");
                String pdesc =request.getParameter("pdesc");
                long pprice =Long.parseLong(request.getParameter("pprice"));
                long pdiscount =Long.parseLong(request.getParameter("pdiscount"));
                long pquantity =Long.parseLong(request.getParameter("pquantity"));
                long categoryId =Long.parseLong(request.getParameter("categoryId"));
                long shop_id =Long.parseLong(request.getParameter("shop"));
                long product_id =Long.parseLong(request.getParameter("product_id"));
                Part pphoto =request.getPart("pphoto");
                String punit =request.getParameter("punit");
               
                Category obj = CategoryDAO.getCategoryId(categoryId);
                Shop shop_obj = ShopDAO.getShopId(shop_id);

                
                Product product=new Product(pname,pdesc,pphoto.getSubmittedFileName(),pprice,pdiscount,pquantity,obj.getCategoryId(),shop_obj.getShopId(),punit);

                //Getter and setter
                product.setPid(product_id);
                product.setPname(pname);
                product.setPunit(punit);
                product.setPdesc(pdesc);
                product.setPprice(pprice);
                product.setPdiscount(pdiscount);
                product.setPquantity(pquantity);
                product.setPphoto(pphoto.getSubmittedFileName());
                product.setCategoryId(obj.getCategoryId());
                product.setShopId(shop_obj.getShopId());
           
                //pic upload
                //find out the path to upload photo
                
                String path=request.getRealPath("images")+File.separator+"products"+File.separator+pphoto.getSubmittedFileName();
               
                ProductDAO.update(product);
                HttpSession httpSession=request.getSession();
                httpSession.setAttribute("product_add_msg", "Product updated successfully Product id is: "+product_id);
                response.sendRedirect("shop_vise_products.jsp");
                
                //uploading code
                try {
                   
                    FileOutputStream fos=new FileOutputStream(path);
                    InputStream is=pphoto.getInputStream();

                    //reading data

                    byte [] data = new byte[is.available()];
                    is.read(data);

                    //writing the data
                    fos.write(data);
                    
                    //close the FileoutputStream
                    fos.close();
                } catch (Exception e) {
                }
            }
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
