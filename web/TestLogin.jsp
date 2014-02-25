<%@page import="java.util.List"%>
<%@page import="enterprise.web_jpa_war.entity.ShoppingCartItem"%>
<%@page import="enterprise.web_jpa_war.servlet.ShoppingCart"%>
<html>
    <head>
        <title>Login Form</title></head>
    <body bgcolor = '#D0D0D0'>
        <div align ='centre'>
            <%request.getSession(true);
            ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
            
            List<ShoppingCartItem> list = cart.getItems();
            list.get(0).toString();
            %>
             
            <%%>
             
        </div>
    </body>        
</html>