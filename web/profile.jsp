<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*;"%>
<%--<jsp:include page="Services.jsp" />--%>
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
                <form method="post" action=""></br>
                    <a class="profilePic"></a></br>
                    <a class="username"><%=user%></a>
                    </br>
                    Email: <%=email%></br>
                    Address: <%=address%></br>
                    Phone: <%=phone%></br>
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
                                sqlStr = "SELECT * FROM Packages WHERE Package_ID = " + id;// for debugging
                                rset = stmt.executeQuery(sqlStr);
                                rset.next(); // Expect only one row in ResultSet
                                String title = rset.getString("Name");
                                float price = rset.getFloat("Price");

                                // Get quantity ordered - no error check!
                                int Stock = Integer.parseInt(request.getParameter("Stock" + id));
                                int idInt = Integer.parseInt(id);
                                if (todo.equals("add")) {
                                    cart.add(idInt, title, price, Stock);
                                } else if (todo.equals("update")) {
                                    cart.update(idInt, Stock);
                                }
                            }

                        } else if (todo.equals("remove")) {
                            String id = request.getParameter("id");  // Only one id for remove case
                            cart.remove(Integer.parseInt(id));
                        }

                        // All cases - Always display the shopping cart
                        if (cart.isEmpty()) {
                            out.println("<p style='text-align:center;'>Your shopping cart is empty</p>");
                        } else {
                            out.println("<table style='color:white;'align='center'  >");
                            out.println("<tr>");
                            out.println("<th>Name</th> <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                            out.println("<th>Price</th> <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");

                            out.println("<th>Quantity</th> <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");

                            out.println("<th>Remove</th></tr> <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");

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
                                out.println("</form></td>");
                                out.println("</tr>");
                                totalPrice += price * Stock;
                            }
                            String strAmount = String.valueOf(totalPrice);
                            out.println("<tr><td colspan='8' align='right'>Total Price: &#8364;" + strAmount + "</td></tr>");

                            out.println("</table>");
                        }

                        // Display the Checkout
                        if (!cart.isEmpty()) {
                            //                out.println("<br /><br />");
                            out.println("<form style='text-align:center;'method='get' action='checkout'>");
                            out.println("<input class='btn'type='submit' value='CheckOut'/>");
                            out.println("<p>Please fill in your particular before checking out:</p>");
                            out.println("<table>");
                            out.println("<tr>");
                            out.println("<td>Enter your Name:</td>");
                            out.println("<td><input type='text' name='cust_name' /></td></tr>");
                            out.println("<tr>");
                            out.println("<td>Enter your Email:</td>");
                            out.println("<td><input type='text' name='cust_email' /></td></tr>");
                            out.println("<tr>");
                            out.println("<td>Enter your Phone Number:</td>");
                            out.println("<td><input type='text' name='cust_phone' /></td></tr>");
                            out.println("</table>");
                            out.println("</form>");
                        }
                        out.println("<p style='text-align:center;'><a style='color:white;text-decoration:none;'href='Welcome.jsp'>Select More Packages</a></p>");

                    %>
                </form>
            </div>
            </body>
            </html>
