/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Pojo.Category;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import Util.HibernateUtil;

/**
 *
 * @author Dilip J Sarvaiya
 */
public class CategoryDAO {
     static Session session=null;
     
//    Add category to the database
      public static long save(Category bean)
    {
        session=HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        long catId=(long)session.save(bean);
        t.commit();
        session.close();
        return catId;
    }
    public static List<Category> viewAll()
    {
        String hql = "from Category";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<Category> categories = query.list();
        session.close();
        return categories;
    }
    public static Category getCategoryId(long cid)
    {
        Category cat=null;
        try
        {
            session=HibernateUtil.getSessionFactory().openSession();
            cat=(Category) session.get(Category.class, cid);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return cat;
    }
}
