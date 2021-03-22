<%-- 
    Document   : message
    Created on : 13 Feb, 2021, 7:05:04 PM
    Author     : Dilip J Sarvaiya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .alert
    {
        font-size: 16px;
    }
</style>

<%
    String message = (String) session.getAttribute("message");
    String message_invalid = (String) session.getAttribute("message_invalid");
    String cat_add_msg = (String) session.getAttribute("cat_add_msg");
    String shop_add_msg = (String) session.getAttribute("shop_add_msg");
    String product_add_msg = (String) session.getAttribute("product_add_msg");
    String logout_msg = (String) session.getAttribute("logout_msg");
    String not_login_checkout = (String) session.getAttribute("not_login_checkout");
    if (message != null) {
%>
<div class="alert alert-success alert-dismissible fade show">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><%=message%></strong>
</div>
<%
        session.removeAttribute("message");
    }
 if (not_login_checkout != null) {
%>
<div class="alert alert-danger alert-dismissible fade show">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><%=not_login_checkout%></strong>
</div>
<%
        session.removeAttribute("not_login_checkout");
    }
    if (message_invalid != null) {

%>
<div class="alert alert-danger alert-dismissible fade show">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><%=message_invalid%></strong>
</div>
<%
        session.removeAttribute("message_invalid");
    }
    if (cat_add_msg != null) {

%>
<div class="alert alert-success alert-dismissible fade show">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong><%=cat_add_msg%></strong>
</div>
    <%
            session.removeAttribute("cat_add_msg");
        }
        if (shop_add_msg != null) {

    %>
    <div class="alert alert-success alert-dismissible fade show">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong><%=shop_add_msg%></strong>
    </div>
        <%
                session.removeAttribute("shop_add_msg");
            }
            if (product_add_msg != null) {

        %>
        <div class="alert alert-success alert-dismissible fade show">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong><%=product_add_msg%></strong>
        </div>
            <%
                    session.removeAttribute("product_add_msg");
                }
                if (logout_msg != null) {

            %>
            <div class="alert alert-success alert-dismissible fade show">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong><%=logout_msg%></strong>
            </div>
            <%
                    session.removeAttribute("logout_msg");
                }
            %>



