/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.*;
/**
 *
 * @author Dilip J Sarvaiya
 */
public class DBConnect_JDBC {
    
    private  static Connection conn;
    
    public static  Connection getConnection()
    {
        try {
            
            if(conn==null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/grocery_db?user=root");
            
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
         return conn;
    }
   
    
}
