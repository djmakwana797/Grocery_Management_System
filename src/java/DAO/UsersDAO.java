/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.OrderDetails;
import Pojo.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import Util.HibernateUtil;

/**
 *
 * @author Dilip J Sarvaiya
 */
public class UsersDAO {
     static Session session=null;
     
    public static long save(User bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        long customerId=(long)session.save(bean);
        t.commit();
        session.close();
        return customerId;
    }
    
     public static void save(OrderDetails bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.save(bean);
        t.commit();
        session.close();
    }
    public static void update(User bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.update(bean);
        t.commit();
        session.close();
    }
     public static void delete(User bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.delete(bean);
        t.commit();
        session.close();
    }
     public static void delete_msg(OrderDetails bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.delete(bean);
        t.commit();
        session.close();
    }
     public static List<User> viewAll()
    {
        String hql = "from User";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<User> users = query.list();
        session.close();
        return users;
    }
      public static List<User> viewAll_Users_by_username(String uname)
    {
        String hql = "from User where userEmail='"+uname+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<User> orderDetails = query.list();
        session.close();
        return orderDetails;
    }
     
     public static List<OrderDetails> viewAll_OrderDetails()
    {
        String hql = "from OrderDetails";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<OrderDetails> orderDetails = query.list();
        session.close();
        return orderDetails;
    }
     
     //For a Single User information
     public static User viewSingle(String username)
    {
        
        String hql = "from User where userEmail='"+username+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<User> users = query.list();
        session.close();
        User obj=null;
        if(!users.isEmpty())
        obj = users.get(0);
        return obj;
    }
     //For a Single User information
     public static User viewSingle_by_user_id(long id)
    {
        
        String hql = "from User where userId='"+id+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<User> users = query.list();
        session.close();
        User obj=null;
        if(!users.isEmpty())
        obj = users.get(0);
        return obj;
    }
}
