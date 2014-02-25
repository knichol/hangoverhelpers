<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <title>HangoverHelpers - Welcome</title><link  rel="shortcut icon" href="favicon.ico"/>
    <body>
        <%
            response.setContentType("text/html;charset=UTF-8");
            Connection conn = null;
            Statement stmt = null;
           // try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");

                stmt = conn.createStatement();
                String sqlStr = "SELECT * FROM Packages";
                ResultSet rset = stmt.executeQuery(sqlStr);
                if (!rset.next()) {  // Check for empty ResultSet (no book found)
                    out.println("<h3>No book found. Please try again!</h3>");
                    out.println("<p><a href='start'>Back to Select Menu</a></p>");
                } else {
                    // Print the result in an HTML form inside a table
                    out.println("<form method='get' action='cart'>");
                    out.println("<input type='hidden' name='todo' value='add' />");
                    out.println("<table border='1' cellpadding='6'>");
                    out.println("<tr>");
                    out.println("<th>&nbsp;</th>");
                    out.println("<th>TITLE</th>");
                    out.println("<th>PRICE</th>");
                    out.println("<th>QTY</th>");
                    out.println("</tr>");

                    // ResultSet's cursor now pointing at first row
                    do {
                        // Print each row with a checkbox identified by book's id
                        String id = rset.getString("Package_ID");
                        out.println("<tr>");
                        out.println("<td><input type='checkbox' name='id' value='" + id + "' /></td>");
                        out.println("<td>" + rset.getString("Name") + "</td>");
                        out.println("<td>$" + rset.getString("Price") + "</td>");
                        out.println("<td><input type='text' size='3' value='1' name='Stock" + id + "' /></td>");
                        out.println("</tr>");
                    } while (rset.next());
                    out.println("</table><br />");
                    // Submit and reset buttons
                    out.println("<input type='submit' value='Add to My Shopping Cart' />");
                    out.println("<input type='reset' value='CLEAR' /></form>");
                }
                // Show "View Shopping Cart" if the cart is not empty
                session = request.getSession(false); // check if session exists
                if (session != null) {
                    ShoppingCart cart;
                    synchronized (session) {
                        // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                        cart = (ShoppingCart) session.getAttribute("cart");
                        if (cart != null && !cart.isEmpty()) {
                            out.println("<P><a href='cart?todo=view'>View Shopping Cart</a></p>");
                        }
                    }
                }

                out.println("</body></html>");
//            } 
//            catch (SQLException ex) {
//                out.println("<h3>Service not available. Please try again later!</h3></body></html>");
//                Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
//            } catch (ClassNotFoundException ex) {
//                Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
//            } finally {
//                out.close();
//                try {
//                    if (stmt != null) {
//                        stmt.close();
//                    }
//                    if (conn != null) {
//                        conn.close();  // Return the connection to the pool
//                    }
//                } catch (SQLException ex) {
//                    Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
//                }
//            }%>

        <div style="font-size:25px;">click here to <a href="Logout">logout</a></div>
    <center>
        <div style="font-size: 30px;">
            <div>Hello </div>
            <div>Login time: </div>
        </div>
    </center>
    <form action="start" method="post">
        <input type="submit"value="Submit">   
    </form>
</head>
</body>
</html>
