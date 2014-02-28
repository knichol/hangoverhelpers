<%@page import="java.text.SimpleDateFormat"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*;"%>
<html>
    <head>
        <title>HangoverHelpers - Cart</title><link  rel="shortcut icon" href="favicon.ico"/>
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
                <%
                    String address = (String) session.getAttribute("address");
                    String email = (String) session.getAttribute("email");
                    String phone = (String) session.getAttribute("phone");
                    String user = (String) session.getAttribute("user");
                    String uname = (String) session.getAttribute("uname");
                    String name3 = "Logout";
                    if (session.getAttribute("uname") == null) {
                        // If not logged in as admin
                        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                        view.forward(request, response);

                        name3 = "";
                        user = "";
                        uname = "";
                        address = "";
                        email = "";
                        phone = "";
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
    <div class="table">
        <div class="row">
            <div class="profile">
                <form method="post"></br>
                    <a class="profilePic"></a></br>
                    <a class="username"><%=user%></a>
                    </br>
                    Email: <%=email%></br>
                    Address: <%=address%></br>
                    Phone: <%=phone%></br></br>
                    <a href="#receipt" style="width: 60px;"class="btn"title="View Receipts"style="text-decoration:none;" >
                        <font size="3"style="text-align:center;">View Previous Receipts</font></a>
                </form>
            </div>
            <div class="cart">
                <form>
                    <%
                        session = request.getSession(true);
                        ShoppingCart cart;
                        synchronized (session) {  // synchronized to prevent concurrent updates
                            // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                            cart = (ShoppingCart) session.getAttribute("cart");
                            if (cart == null) {  // No cart, create one.
                                cart = new ShoppingCart();
                                session.setAttribute("cart", cart);  // Save it into session
                            }
                        }

                        Connection conn = null;
                        Statement stmt = null;
                        ResultSet rset = null;
                        String sqlStr = null;
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                        stmt = conn.createStatement();  // Get a connection from the pool
                        out.println("<h2 style='text-align:center;'>Shopping Cart</h2>");

                        String todo = request.getParameter("todo");
                        if (todo == null) {
                            todo = "view";  // to prevent null pointer
                        }
                        if (todo.equals("add") || todo.equals("update")) {
                            String[] ids = request.getParameterValues("id");
                            if (ids == null) {
                                out.println("<h3>Please Select a Package!</h3></body></html>");
                                return;
                            }
                            for (String id : ids) {
                                sqlStr = "SELECT * FROM Packages WHERE Package_ID = " + id;
                                rset = stmt.executeQuery(sqlStr);
                                rset.next(); 
                                String title = rset.getString("Name");
                                float price = rset.getFloat("Price");

                                int Stock = Integer.parseInt(request.getParameter("Stock" + id));
                                int idInt = Integer.parseInt(id);
                                if (todo.equals("add")) {
                                    cart.add(idInt, title, price, Stock);
                                } else if (todo.equals("update")) {
                                    cart.update(idInt, Stock);
                                }
                            }

                        } else if (todo.equals("remove")) {
                            String id = request.getParameter("id"); 
                            cart.remove(Integer.parseInt(id));
                        }
                        if (cart.isEmpty()) {
                            out.println("<p style='text-align:center;'>Your shopping cart is empty</p>");
                        } else {
                            out.println("<table style='color:white;'align='center'  >");
                            out.println("<tr>");
                            out.println("<th>Name</th> <th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");
                            out.println("<th>Price</th> <th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");

                            out.println("<th>Quantity</th> <th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>");

                            out.println("<th>Remove</th></tr>");

                            float totalPrice = 0f;
                            for (ShoppingCartItem item : cart.getItems()) {
                                int id = item.getId();
                                String title = item.getName();
                                float price = item.getPrice();
                                int Stock = item.getStock();

                                out.println("<tr>");
                                out.println("<td>" + title + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");

                                out.println("<td>&#8364;" + price + "</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");

                                out.println("<td><form method='get'>");
                                out.println("<input type='hidden' name='todo' value='update' />");
                                out.println("<input type='hidden' name='id' value='" + id + "' />");
                                out.println("<input style='width:50px;height:30px;'type='text' size='3' name='Stock" + id + "' value='" + Stock + "'/>");
                                out.println("<input class='btn'type='submit' value='Update' />");
                                out.println("</form></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");

                                out.println("<td><form method='get'>");
                                out.println("<input class='btn'type='submit' value='Remove'/>");
                                out.println("<input type='hidden' name='todo' value='remove'/>");
                                out.println("<input type='hidden' name='id' value='" + id + "'/>");
                                out.println("</form></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                                out.println("</tr>");
                                totalPrice += price * Stock;
                            }
                            String strAmount = String.valueOf(totalPrice);
                            out.println("<tr><td colspan='8' align='right'>Total Price: &#8364;" + strAmount + "</td></tr>");

                            out.println("</table>");
                        }
                        out.println("<p style='text-align:center;'><a style='color:white;text-decoration:none;'href='Welcome.jsp'>Select More Packages</a></p>");
                        if (!cart.isEmpty()) {
                            out.println("<form style='text-align:center;'method='get' action='checkout'>");
                            out.println("<input class='btn'type='submit' value='CheckOut'/>");
                            out.println("</form>");
                        }
                    %>
                </form>
            </div>
            <div id="receipt" class="receipt">
                <div>
                    <a href="#close" title="Close" class="close">X</a>
                    <form  method="post">
                        <table align="center"style="color:white;text-align: center;">
                            <tr>
                            <th>Receipt No.</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
                            <th>Name</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
                            <th>Address</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>
                            <th>Total Cost</th>  <th>&nbsp;</th><th>&nbsp;</th>  <th>&nbsp;</th>
                            <th>Order Date</th>  <th>&nbsp;</th><th>&nbsp;</th>  <th>&nbsp;</th>

                            </tr>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                                Statement s = con.createStatement();
                                ResultSet rs = s.executeQuery("select * from Receipt where Name = '" + user + "'");

                                while (rs.next()) {
                            %>
                            <tr>
                            <td><%=rs.getString("Receipt_Num")%></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                            <td><%=rs.getString("Name")%></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                            <td><%=rs.getString("Address")%></td> <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                            <td><%=rs.getString("Total")%></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                            <td><%=rs.getTimestamp("Date")%></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

                            </tr>
                            <%
                                }
                            %>
                        </table>
                        <%
                            rs.close();
                            s.close();
                            con.close();
                        %>

                    </form> </div></div>
            </body>
            </html>
