<%-- 
    Document   : addtocardAction
    Created on : Feb 23, 2021, 3:36:15 PM
    Author     : Admin
--%>

<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Pojo.*"%>
<%@page isErrorPage="true" %>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {
%>
<div style="margin-top: 140px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=email%></strong></h4>
            <%out.println(email);%>
        </div>
    </div>
</div>
<%
} else {
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>

<%
    String product_id = request.getParameter("id");
    String cat = (String)httpSession.getAttribute("category_value");
    String shop =(String)httpSession.getAttribute("shop_value");
    

int Quantity=1;
long product_price=0;
long product_total=0;
long cart_total=0;
int z=0;

try
{
    Connection conn=DBConnect_JDBC.getConnection();
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select * from product where pid='"+product_id+"'");
    while(rs.next())
    {
    
    product_price=Long.valueOf(rs.getInt(5));
   // (long)((this.getPdiscount()/100.0)*this.getPprice())
    product_total=product_price-(long)((Long.valueOf(rs.getInt(6))/100.0)*product_price);
    //long discount=(long)( (this.getPdiscount()/100.0)*this.getPprice() );
        //return this.getPprice()-discount;
    }
     ResultSet rs1=st.executeQuery("select * from cart where p_id='"+product_id+"' and email='"+email+"' and address is NULL ");
     while(rs1.next())
     {
         cart_total=rs1.getInt(5);
         cart_total=cart_total+product_total;
         Quantity=rs1.getInt(4);
         Quantity=Quantity+1;
         z=1;
     }
     if(z==1)
     {
         st.executeUpdate("update cart set total='"+cart_total+"', quantity='"+Quantity+"' where p_id="+product_id+" and email='"+email+"' and address is NULL");
          httpSession.setAttribute("shop_add_msg", "Quantity is increased: ");
         if(cat!=null || shop!=null)
         {
             if(Long.parseLong(cat)!=0)
             {
                 long cat1=Long.parseLong(cat);
                response.sendRedirect("product.jsp?category="+cat1+" ");
             }
             if(Long.parseLong(shop)!=0)
             {
                 long shop1=Long.parseLong(shop);
                response.sendRedirect("product.jsp?shop="+shop1+" ");
             }
         }
         else
         {
             response.sendRedirect("product.jsp");
         }
     }
    
   
     if(z==0)
     {      ResultSet rs2=st.executeQuery("select * from cart where  email='"+email+"'");
         PreparedStatement ps=conn.prepareStatement("insert into cart(email,p_id,quantity,cprice,total) values (?,?,?,?,?)");
         ps.setString(1, email);
         ps.setString(2, product_id);
         ps.setInt(3, Quantity);
         ps.setLong(4, product_price);
         ps.setLong(5, product_total);
         ps.executeUpdate();
        
         httpSession.setAttribute("shop_add_msg", "Added into the cart: ");
         if(cat!=null || shop!=null)
         {
             if(Long.parseLong(cat)!=0)
             {
                 long cat1=Long.parseLong(cat);
                response.sendRedirect("product.jsp?category="+cat1+" ");
             }
             if(Long.parseLong(shop)!=0)
             {
                 long shop1=Long.parseLong(shop);
                response.sendRedirect("product.jsp?shop="+shop1+" ");
             }
         }
         else
         {
             response.sendRedirect("product.jsp");
         }
     }
}
catch(Exception e)
{
    out.println(e.getMessage());   
}
%>



