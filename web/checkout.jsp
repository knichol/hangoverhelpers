<%@page import="java.sql.*"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Receipt</title><link  rel="shortcut icon" href="favicon.ico"/>
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
    <div class="receipt1">
        <form style="text-align: center;color:white;">
            <%

                Connection conn = null;
                Statement stmt = null;
                String sqlStr = null;
                session = null;
                ShoppingCart cart = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                stmt = conn.createStatement();

                out.println("<h2 align='center'>Receipt</h2>");
                // Retrieve the Cart
                session = request.getSession(false);
                if (session == null) {
                    out.println("<h3>Your Shopping cart is empty!</h3></body></html>");
                    return;
                }
                synchronized (session) {
                    cart = (ShoppingCart) session.getAttribute("cart");
                    if (cart == null) {
                        out.println("<h3>Your Shopping cart is empty!</h3></body></html>");
                        return;
                    }
                }

                String name = (String) session.getAttribute("user");
                String address = (String) session.getAttribute("address");
                String phone = (String) session.getAttribute("phone");

                out.println("<table style='color:white;'align='center'>");
                out.println("<tr>");
                out.println("<th>Name:</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");
                out.println("<th>Address:</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");
                out.println("<th>Phone Number:</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");
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
                    out.println("<td>" + name + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                    out.println("<td>" + address + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                    out.println("<td>" + phone + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                    out.println("<td>" + Name + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                    out.println("<td>" + Price + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                    out.println("<td>" + Stock + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
                    totalPrice += Price * Stock;
                }
                String strAmount = String.valueOf(totalPrice);
                out.println("</br><tr><td colspan='28'align='center'></br></br></br>Total Price: &#8364;" + strAmount + "</td></tr>");
                out.println("</table>");
                cart.clear();   // empty cart
                session.setAttribute("total", strAmount);
            %>
        </form>
        <form style="text-align: center;"action="Receipt" method="post">
            <input class="btn"type="submit" value="Save Receipt">
        </form>
        <table style="font-family: Bradley hand ITC;color:white;font-size:150%;"align="center">
            <tr>
            <th align='center'>Thank you.</th>  </tr><tr>
            <th><a href="Services.jsp"style="text-decoration: none;">Back to Services</a></th>
        </tr>
        </table>
    </div>
</body>
</html>
