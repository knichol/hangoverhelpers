/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.servlet;

/**
 *
 * @author Cian
 */

import java.io.*;
import java.sql.*;
import java.util.logging.*;
import javax.naming.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.DataSource;
import enterprise.web_jpa_war.entity.*;
import enterprise.web_jpa_war.servlet.*;
 
public class CartServlet extends HttpServlet {
 
   private DataSource pool;  // Database connection pool
 
   @Override
   public void init(ServletConfig config) throws ServletException {
      try {
         // Create a JNDI Initial context to be able to lookup the DataSource
         InitialContext ctx = new InitialContext();
         // Lookup the DataSource.
         pool = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql_ebookshop");
         if (pool == null)
            throw new ServletException("Unknown DataSource 'jdbc/mysql_ebookshop'");
      } catch (NamingException ex) {
         Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
      }
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
 
      // Retrieve current HTTPSession object. If none, create one.
      HttpSession session = request.getSession(true);
      ShoppingCart cart;
      synchronized (session) {  // synchronized to prevent concurrent updates
         // Retrieve the shopping cart for this session, if any. Otherwise, create one.
         cart = (ShoppingCart) session.getAttribute("cart");
         if (cart == null) {  // No cart, create one.
            cart = new ShoppingCart();
            session.setAttribute("cart", cart);  // Save it into session
         }
      }
 
      Connection conn   = null;
      Statement  stmt   = null;
      ResultSet  rset   = null;
      String     sqlStr = null;
 
      try {
         conn = pool.getConnection();  // Get a connection from the pool
         stmt = conn.createStatement();
 
         out.println("<html><head><title>Shopping Cart</title></head><body>");
         out.println("<h2>YAEBS - Your Shopping Cart</h2>");
 
         // This servlet handles 4 cases:
         // (1) todo=add id=1001 qty1001=5 [id=1002 qty1002=1 ...]
         // (2) todo=update id=1001 qty1001=5
         // (3) todo=remove id=1001
         // (4) todo=view
 
         String todo = request.getParameter("todo");
         if (todo == null) todo = "view";  // to prevent null pointer
 
         if (todo.equals("add") || todo.equals("update")) {
            // (1) todo=add id=1001 qty1001=5 [id=1002 qty1002=1 ...]
            // (2) todo=update id=1001 qty1001=5
            String[] ids = request.getParameterValues("Package_ID");
            if (ids == null) {
               out.println("<h3>Please Select a Book!</h3></body></html>");
               return;
            }
            for (String Package_ID : ids) {
               sqlStr = "SELECT * FROM books WHERE Package_ID = " + Package_ID;
               //System.out.println(sqlStr);  // for debugging
               rset = stmt.executeQuery(sqlStr);
               rset.next(); // Expect only one row in ResultSet
               String Name = rset.getString("Name");
               float Price = rset.getFloat("Price");
 
               // Get quantity ordered - no error check!
               int Stock = Integer.parseInt(request.getParameter("Stock" + Package_ID));
               int idInt = Integer.parseInt(Package_ID);
               if (todo.equals("add")) {
                  cart.add(idInt, Name, Price, Stock);
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
            out.println("<p>Your shopping cart is empty</p>");
         } else {
            out.println("<table border='1' cellpadding='6'>");
            out.println("<tr>");
            out.println("<th>AUTHOR</th>");
            out.println("<th>TITLE</th>");
            out.println("<th>PRICE</th>");
            out.println("<th>QTY</th>");
            out.println("<th>REMOVE</th></tr>");
 
            float totalPrice = 0f;
            for (ShoppingCartItem item : cart.getItems()) {
               int id = item.getId();
               String Name = item.getName();
               float Price = item.getPrice();
               int Stock = item.getStock();
 
               out.println("<tr>");
               out.println("<td>" + Name +  "</td>");
               out.println("<td>" + Price +  "</td>");
 
               out.println("<td><form method='get'>");
               out.println("<input type='hidden' name='todo' value='update' />");
               out.println("<input type='hidden' name='id' value='" + id + "' />");
               out.println("<input type='text' size='3' name='qty"
                       + id + "' value='" + Stock + "' />" );
               out.println("<input type='submit' value='Update' />");
               out.println("</form></td>");
 
               out.println("<td><form method='get'>");
               out.println("<input type='submit' value='Remove'>");
               out.println("<input type='hidden' name='todo' value='remove'");
               out.println("<input type='hidden' name='id' value='" + id + "'>");
               out.println("</form></td>");
               out.println("</tr>");
               totalPrice += Price * Stock;
            }
            out.println("<tr><td colspan='5' align='right'>Total Price: $");
            out.printf("%.2f</td></tr>", totalPrice);
            out.println("</table>");
         }
 
         out.println("<p><a href='start'>Select More Books...</a></p>");
 
         // Display the Checkout
         if (!cart.isEmpty()) {
            out.println("<br /><br />");
            out.println("<form method='get' action='checkout'>");
            out.println("<input type='submit' value='CHECK OUT'>");
            out.println("<p>Please fill in your particular before checking out:</p>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Enter your Name:</td>");
            out.println("<td><input type='text' name='Name' /></td></tr>");
            out.println("<tr>");
            out.println("<td>Enter your Email:</td>");
            out.println("<td><input type='text' name='cust_email' /></td></tr>");
            out.println("<tr>");
            out.println("<td>Enter your Phone Number:</td>");
            out.println("<td><input type='text' name='cust_phone' /></td></tr>");
            out.println("</table>");
            out.println("</form>");
         }
 
         out.println("</body></html>");
 
      } catch (SQLException ex) {
         out.println("<h3>Service not available. Please try again later!</h3></body></html>");
         Logger.getLogger(CartServlet.class.getName()).log(Level.SEVERE, null, ex);
      } finally {
         out.close();
         try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();  // return the connection to the pool
         } catch (SQLException ex) {
            Logger.getLogger(CartServlet.class.getName()).log(Level.SEVERE, null, ex);
         }
      }
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
      doGet(request, response);
   }
}