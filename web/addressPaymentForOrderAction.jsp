<%-- 
    Document   : addressPaymentFforOrderAction
    Created on : 8 Mar, 2021, 5:06:20 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page import="Pojo.User"%>
<%@page import="Pojo.Cart"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="DAO.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    String userName = request.getParameter("userName");
    String userEmail = request.getParameter("userEmail");
    String userPhone = request.getParameter("userPhone");
    String user_type = request.getParameter("user_type");
    String d_boy = request.getParameter("d_boy");
    httpSession.setAttribute("d_boy", d_boy);
    String userAddress = request.getParameter("userAddress");
    String payment_method = request.getParameter("payment_method");
    String transactionId = request.getParameter("transactionId");
    String status = "bill";
    String d_boy_status="assigned";
    DeliveryBoy db_single=DeliveryboyDAO.viewSingle_by_name(d_boy);
    
    db_single.setStatus(d_boy_status);
    DeliveryboyDAO.update(db_single);

    out.println(email + userName + userEmail + userPhone + userAddress + user_type + payment_method + transactionId);

    if (email != null) {
%>
<div style="margin-top: 10px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=email%></strong></h4>
        </div>
    </div>
</div>
<%
} else {
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address payment for order action</title>
        <script>
            if (window.history.forward(1) != null)
                window.history.forward(1);
        </script>
    </head>
    <body>
        <%
            try
            {
                Calendar calendar = Calendar.getInstance();
                System.out.println("Current Date = " + calendar.getTime());
                // Incrementing hours by 5
                calendar.add(Calendar.HOUR_OF_DAY, +3);
                System.out.println("Updated Date = " + calendar.getTime());

                //Displaying current time in 12 hour format with AM/PM
                DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm aa");
                String dateString2 = dateFormat2.format(calendar.getTime()).toString();
            User obj = UsersDAO.viewSingle(email);
            
            if (obj != null) {
                
                User bean=new User(userName,userEmail,obj.getUserPassword(),userPhone,user_type,userAddress);
                bean.setUserId(obj.getUserId());
                UsersDAO.update(bean);
            }
            Connection conn = DBConnect_JDBC.getConnection();
            PreparedStatement ps1=conn.prepareStatement("update cart set address=?,number=?,orderDateTime=now(),DeliveryDate='"+dateString2+"',paymentMethod=?,transactionID=?,status=?,db_email=? where email=? and address is NULL");
            ps1.setString(1,userAddress);
            ps1.setString(2,userPhone);
            ps1.setString(3,payment_method);
            ps1.setString(4,transactionId);
            ps1.setString(5,status);
            ps1.setString(6,db_single.getDbEmail());
            ps1.setString(7,email);
            ps1.executeUpdate();
            response.sendRedirect("bill.jsp");
            }
            catch(Exception ex)
            {
                out.println(ex.getMessage());
            }
                
        %>
    </body>
</html>
