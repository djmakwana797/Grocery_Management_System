/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.Cart;
import Pojo.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;
import Util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Dilip J Sarvaiya
 */
public class ProductDAO {
     static Session session=null;
     public static long save(Product bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        long pid=(long)session.save(bean);
        t.commit();
        session.close();
        return pid;
    }
    public static void update(Product bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.update(bean);
        t.commit();
        session.close();
    }
      public static void delete(Product bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.delete(bean);
        t.commit();
        session.close();
    }  
     
      public static void save(Cart bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.save(bean);
        t.commit();
        session.close();
    }
      public static void delete(Cart bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.delete(bean);
        t.commit();
        session.close();
    }  
     
     
      public static List<Product> getAllProducts()
    {
        String hql = "from Product";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Product> products = query.list();
        session.close();
        return products;
    }
      public static List<Cart> getAll_Cart_Products()
    {
        String hql = "from Cart";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Cart> carts = query.list();
        session.close();
        return carts;
    }
      public static List<Product> getAllProductsById(long cid)
    {
        String hql = "from Product where categoryId='"+cid+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Product> products = query.list();
        session.close();
        return products;
    }
      
       public static List<Product> getAllProductsByShopId(long cid)
    {
        String hql = "from Product where shopId='"+cid+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Product> products = query.list();
        session.close();
        return products;
    }
      
       public static List<Product> getAllProductsByProductId(long pid)
    {
        String hql = "from Product where pid='"+pid+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Product> products = query.list();
        session.close();
        return products;
    }
       
     public static Product viewSingle(long cid)
    {
        
        String hql = "from Product where categoryId='"+cid+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Product> products = query.list();
        session.close();
        Product obj=null;
        if(!products.isEmpty())
        obj = products.get(0);
        return obj;
    }  
     
     //View Single product by id
      public static Product viewSingle_by_Product_id(long cid)
    {
        
        String hql = "from Product where pid='"+cid+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Product> products = query.list();
        session.close();
        Product obj=null;
        if(!products.isEmpty())
        obj = products.get(0);
        return obj;
    }  
     
     
     //Cart
     
      public static List<Cart> Cartproductsusing_email_id(long pid,String email)
    {
        String hql = "from Cart where PId='"+pid+"' and email='"+email+"' ";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Cart> carts = query.list();
        session.close();
        return carts;
    }
      
    public static void update(Cart bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.update(bean);
        t.commit();
        session.close();
    }
    
    public static Cart viewSingle_cart(String username)
    {
        
        String hql = "from Cart where email='"+username+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Cart> carts = query.list();
        session.close();
        Cart obj=null;
        if(!carts.isEmpty())
        obj = carts.get(0);
        return obj;
    }
    
    //List object for the carts for same email id
    
    public static List<Cart> For_getting_all_carts(String email)
    {
        String hql = "from Cart where email='"+email+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Cart> carts = query.list();
        session.close();
        return carts;
    }
      
}
