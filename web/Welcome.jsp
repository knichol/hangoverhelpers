<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <title>HangoverHelpers - Services</title><link  rel="shortcut icon" href="favicon.ico"/>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <p style="margin-top:-54px; margin-left:-50px;" class="aligncenter">
            <table border="0">
                <tr>
                <td><a title="Home"href="index.jsp"class="test">Home</a></td>
                <td>&nbsp;</td>
                <td><a title="Services" href="Services.jsp"class="test">Services</a></td>
                <td>&nbsp;</td>
                <td><a href="About.jsp"title="About Us"class="test">About</a></td>
                <td>&nbsp;</td>
                <td><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></td>
                </tr></table></p>
            <p class="alignright">

                <a  class="test"href="profile.jsp" title="Cart"></font></a>

                <a  class="test"href="register.jsp" title="Register"></font></a>
            <td>&nbsp;</td>
            <a class="test" title="Logout"href="Logout"></a>
            <a class="test"href="#login" title="Login"></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>
    <div class="box">
        </br>
        <font style="color:white;font-family: Bradley hand ITC;font-size:200%;"> Cart</font></br>
            <%
                Connection conn = null;
                Statement stmt = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");

                stmt = conn.createStatement();
                String sqlStr = "SELECT * FROM Packages";
                ResultSet rset = stmt.executeQuery(sqlStr);
                if (rset.next()) {
                    // ResultSet's cursor now pointing at first row
                    do {
                        out.println("<td><form style='color:white;font-family: Bradley hand ITC;'method='get' action='cart'>");
                        out.println("<input type='hidden' name='todo' value='add' />");
                        // Print each row with a checkbox identified by book's id
                        String id = rset.getString("Package_ID");
                        //   out.println("<tr>");
            %> 
            <%out.println("<a><div style='margin-top:20px;'class='drink drink1'><p class='imgText1'>Package 1</p></div></a>");%>
        <input class="btn3"type="checkbox" name="id" value="<%=id%>"/>
        <% out.println(rset.getString("Name"));%>
        <% out.println("&#8364;" + rset.getString("Price"));%>
        <% out.println("<input style='width:30px;height:30ps;'type='text' size='3' value='1' name='Stock" + id + "'/>");%>
        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
        <%              } while (rset.next());
            out.println("</br></br><input class='btn'type='submit' value='Add to Cart' />");
        %>  <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
        <%
                out.println("<input class='btn'type='reset' value='Clear' /></form></td>");
            }
            // Show "View Shopping Cart" if the cart is not empty
            session = request.getSession(false); // check if session exists
            if (session != null) {
                ShoppingCart cart;
                synchronized (session) {
                    // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                    cart = (ShoppingCart) session.getAttribute("cart");
                    if (cart != null && !cart.isEmpty()) {
                        // out.println("<P><a href='cart?todo=view'>View Shopping Cart</a></p>");
                    }
                }
            }

                  //out.println("</body></html>");
%>
    </div>
</body>
</html>
