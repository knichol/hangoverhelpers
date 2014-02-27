<%@page import="java.sql.*"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Home</title><link  rel="shortcut icon" href="favicon.ico"/>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <table align="center">
                <th><a title="Home"href="index.jsp"class="test">Home</a></th>
                <th>&nbsp;</th>
                <th><a title="Services" href="Services.jsp"class="test">Services</a></th>
                <th>&nbsp;</th>
                <th><a href="About.jsp"title="About Us"class="test">About</a></td>
                <th>&nbsp;</th>
                <th><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></th>
            </table>
            <p class="alignright">
                <%  String uname = (String) session.getAttribute("uname");
                    String name3 = "Logout";
                    if (session.getAttribute("uname") == null) {
                        name3 = "";
                        uname = "";
                        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                        view.forward(request, response);
                    }
                %>    
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>
            <td>&nbsp;</td>
            <a class="test" href="Logout"><%=name3%></a>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>    
    <div class="cart">
        <form>
            <%

                    Connection conn = null;
                    Statement stmt = null;
                    String sqlStr = null;
                    session = null;
                    ShoppingCart cart = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                    // conn = pool.getConnection("mydb1127", "mydb112739");  // Get a connection from the pool
                    stmt = conn.createStatement();
                    out.println("<h2 align='center'>Receipt</h2>");

                    // Retrieve the Cart
                    session = request.getSession(false);
                    if (session == null) {
                        out.println("<h3 align='center'>Your Shopping cart is empty!</h3></body></html>");
                        return;
                    }
                    synchronized (session) {
                        cart = (ShoppingCart) session.getAttribute("cart");
                        if (cart == null) {
                            out.println("<h3 align='center'>Your Shopping cart is empty!</h3></body></html>");
                            return;
                        }
                    }

                    String name = (String) session.getAttribute("user");
                    String address = (String) session.getAttribute("address");
                    String phone = (String) session.getAttribute("phone");

                    // Display the name, email and phone (arranged in a table)
                    out.println("<table style='color:white;'align='center'>");
                    out.println("<tr>");
                    out.println("<td>Customer Name:</td>");
                    out.println("<td>" + name + "</td></tr>");
                    out.println("<tr>");
                    out.println("<td>Customer Address:</td>");
                    out.println("<td>" + address + "</td></tr>");
                    out.println("<tr>");
                    out.println("<td>Customer Phone Number:</td>");
                    out.println("<td>" + phone + "</td></tr>");
                    out.println("</table></br>");

                    out.println("<table style='color:white;'align='center'>");
                    out.println("<tr>");
                    out.println("<th>Package</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");
                    out.println("<th>Price</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");
                    out.println("<th>Quantity</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th></tr>");

                    float totalPrice = 0f;
                    for (ShoppingCartItem item : cart.getItems()) {
                        int id = item.getId();
                        String Name = item.getName();
                        int Stock = item.getStock();
                        float Price = item.getPrice();

                        sqlStr = "UPDATE Packages SET Stock = Stock - " + Stock + " WHERE Package_ID = " + id;
                        stmt.executeUpdate(sqlStr);
                        
                        out.println("<tr>");
                        out.println("<td>" + Name + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                        out.println("<td>" + Price + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                        out.println("<td>" + Stock + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
                        totalPrice += Price * Stock;
                    }
                    String strAmount = String.valueOf(totalPrice);
                    out.println("<tr><td colspan='8' align='right'>Total Price: &#8364;" + strAmount + "</td></tr>");
                    out.println("</table>");
                    out.println("<h3 align='center'>Thank you.</h3>");
                    //out.println("<p style='text-align:center;text-decoration:none;'href='Welcome.jsp'>Back to Packages</p>");
                    cart.clear();   // empty cart
            %>
           <p style='text-align:center;text-decoration:none;'href='Welcome.jsp'>Back to Packages</p>
                    
        </form>
    </div>
</body>
</html>
