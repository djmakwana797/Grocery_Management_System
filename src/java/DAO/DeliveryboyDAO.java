/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.DeliveryBoy;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import Util.HibernateUtil;

/**
 *
 * @author Dilip J Sarvaiya
 */
public class DeliveryboyDAO {
     static Session session=null;
   
   
     
//    Add category to the database
      public static long save(DeliveryBoy bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        long shop_id=(long)session.save(bean);
        t.commit();
        session.close();
        return shop_id;
    }
      
       public static void update(DeliveryBoy bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.update(bean);
        t.commit();
        session.close();
    }
       
    public static List<DeliveryBoy> viewAll()
    {
        String hql = "from DeliveryBoy";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<DeliveryBoy> DeliveryBoys = query.list();
        session.close();
        return DeliveryBoys;
    }
     public static List<DeliveryBoy> For_getting_all_boys()
    {
        String hql = "from DeliveryBoy where status='available'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<DeliveryBoy> carts = query.list();
        session.close();
        return carts;
    }
    
      public static DeliveryBoy getShopId(long dboy_Id)
    {
        DeliveryBoy cat=null;
        try
        {
            session=HibernateUtil.getSessionFactory().openSession();
            cat=(DeliveryBoy) session.get(DeliveryBoy.class, dboy_Id);
            session.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return cat;
    }
      
      
     //For a Single User information
     public static DeliveryBoy viewSingle(String dbEmail)
    {
        
        String hql = "from DeliveryBoy where dbEmail='"+dbEmail+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<DeliveryBoy> d_boys = query.list();
        session.close();
        DeliveryBoy obj=null;
        if(!d_boys.isEmpty())
        obj = d_boys.get(0);
        return obj;
    }
     
     
      public static DeliveryBoy viewSingle_by_name(String dbName)
    {
        
        String hql = "from DeliveryBoy where dbName='"+dbName+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<DeliveryBoy> d_boys = query.list();
        session.close();
        DeliveryBoy obj=null;
        if(!d_boys.isEmpty())
        obj = d_boys.get(0);
        return obj;
    }
}
