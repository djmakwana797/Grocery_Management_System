/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.Shop;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import Util.HibernateUtil;

/**
 *
 * @author Dilip J Sarvaiya
 */
public class ShopDAO {
     static Session session=null;
   
//    Add category to the database
      public static long save(Shop bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        long shop_id=(long)session.save(bean);
        t.commit();
        session.close();
        return shop_id;
    }
     public static void update(Shop bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.update(bean);
        t.commit();
        session.close();
    }
     public static void delete(Shop bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.delete(bean);
        t.commit();
        session.close();
    }
    
    public static List<Shop> viewAll()
    {
        String hql = "from Shop";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Shop> shops = query.list();
        session.close();
        return shops;
    }
    
    
    //all information of shop by the id
    public static Shop getShopId(long shopId)
    {
        Shop cat=null;
        try
        {
            session=HibernateUtil.getSessionFactory().openSession();
            cat=(Shop) session.get(Shop.class, shopId);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return cat;
    }
    
    
     //For a Single User information
     public static Shop viewSingle(String username)
    {
        
        String hql = "from Shop where shopEmail='"+username+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Shop> users = query.list();
        session.close();
        Shop obj=null;
        if(!users.isEmpty())
        obj = users.get(0);
        return obj;
    }
     
      public static Shop viewSingle_by_shop_id(long shopId)
    {
        
        String hql = "from Shop where shopId='"+shopId+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Shop> users = query.list();
        session.close();
        Shop obj=null;
        if(!users.isEmpty())
        obj = users.get(0);
        return obj;
    }
}
