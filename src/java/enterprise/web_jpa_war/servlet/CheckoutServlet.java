/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.servlet;

/**
 *
 * @author Cian
 */
import enterprise.web_jpa_war.entity.*;
import enterprise.web_jpa_war.servlet.*;
import java.io.*;
import java.sql.*;
import java.util.logging.*;
import javax.naming.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "CheckoutServlet", urlPatterns = {"/checkout"})
public class CheckoutServlet extends HttpServlet {

//   private DataSource pool;  // Database connection pool
// 
//   @Override
//   public void init(ServletConfig config) throws ServletException {
//      try {
//         // Create a JNDI Initial context to be able to lookup the DataSource
//         InitialContext ctx = new InitialContext();
//         // Lookup the DataSource.
//         pool = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql_ebookshop");
//         if (pool == null)
//            throw new ServletException("Unknown DataSource 'jdbc/mysql_ebookshop'");
//      } catch (NamingException ex) {
//         Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
//      }
//   }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String sqlStr = null;
        String sqlStr1 = null;
        HttpSession session = null;
        ShoppingCart cart = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
            // conn = pool.getConnection("mydb1127", "mydb112739");  // Get a connection from the pool
            stmt = conn.createStatement();

            out.println("<html><head><title>Checkout</title></head><body>");
            out.println("<h2>YAEBS - Checkout</h2>");

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

            // Retrieve and process request parameters: id(s), cust_name, cust_email, cust_phone
            String custName = request.getParameter("cust_name");
            boolean hasCustName = custName != null && ((custName = custName.trim()).length() > 0);
            String custEmail = request.getParameter("cust_email").trim();
            boolean hasCustEmail = custEmail != null && ((custEmail = custEmail.trim()).length() > 0);
            String custPhone = request.getParameter("cust_phone").trim();
            boolean hasCustPhone = custPhone != null && ((custPhone = custPhone.trim()).length() > 0);

            // Validate inputs
            if (!hasCustName) {

                out.println("<h3>Please Enter Your Name!</h3></body></html>");
                return;
            } else if (!hasCustEmail || (custEmail.indexOf('@') == -1)) {
                out.println("<h3>Please Enter Your email (user@host)!</h3></body></html>");
                return;
            } else if (!hasCustPhone || custPhone.length() != 8) {
                out.println("<h3>Please Enter an 8-digit Phone Number!</h3></body></html>");
                return;
            }

            // Display the name, email and phone (arranged in a table)
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Customer Name:</td>");
            out.println("<td>" + custName + "</td></tr>");
            out.println("<tr>");
            out.println("<td>Customer Email:</td>");
            out.println("<td>" + custEmail + "</td></tr>");
            out.println("<tr>");
            out.println("<td>Customer Phone Number:</td>");
            out.println("<td>" + custPhone + "</td></tr>");
            out.println("</table>");

            // Print the book(s) ordered in a table
            out.println("<br />");
            out.println("<table border='1' cellpadding='5'>");
            out.println("<tr>");
            out.println("<th>Name</th>");
            out.println("<th>Price</th>");
            out.println("<th>Quantity</th></tr>");
            
            float totalPrice = 0f;
            for (ShoppingCartItem item : cart.getItems()) {
                int id = item.getId();
                String Name = item.getName();
                int Stock = item.getStock();
                float Price = item.getPrice();

                // No check for price and qtyAvailable change
                // Update the books table and insert an order record
                sqlStr = "UPDATE Packages SET Stock = Stock - " + Stock + " WHERE Package_ID = " + id;
                //System.out.println(sqlStr);  // for debugging
                stmt.executeUpdate(sqlStr);

           //     sqlStr1 = "INSERT INTO Order_Package VALUES ("+Stock+","+custName+","+id+")";
                //System.out.println(sqlStr);  // for debugging
             //   stmt.executeUpdate(sqlStr1);
                // Show the book ordered
                out.println("<tr>");
                out.println("<td>" + Name + "</td>");
                out.println("<td>" + Price + "</td>");
                out.println("<td>" + Stock + "</td></tr>");
                totalPrice += Price * Stock;
            }
            out.println("<tr><td colspan='4' align='right'>Total Price: $");
            out.printf("%.2f</td></tr>", totalPrice);
            out.println("</table>");

            out.println("<h3>Thank you.</h3>");
            out.println("<a href='welcome.jsp'>Back to Search Menu</a>");
            out.println("</body></html>");

            cart.clear();   // empty the cart
        } catch (SQLException ex) {
            cart.clear();   // empty the cart
            out.println("<h3>Service not available. Please try again later!</h3></body></html>");
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }  // Return the connection to the pool
            } catch (SQLException ex) {
                Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
