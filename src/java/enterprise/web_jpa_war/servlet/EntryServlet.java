/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.servlet;

import java.io.*;
import java.sql.*;
import java.util.logging.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;

@WebServlet(name = "EntryServlet", urlPatterns = {"/start"})
public class EntryServlet extends HttpServlet {

//    private DataSource pool;  // Database connection pool
//
//    @Override
//    public void init(ServletConfig config) throws ServletException {
//        try {
//            // Create a JNDI Initial context to be able to lookup the DataSource
//            InitialContext ctx = new InitialContext();
//            // Lookup the DataSource
//           
//           // Statement s = con.createStatement();
//            pool = (DataSource) ctx.lookup("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127");
////            if (pool == null) {
////                throw new ServletException("Unknown DataSource 'jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127'");
////            }
//        } catch (NamingException ex) {
//            Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // conn = pool.getConnection("mydb1127", "mydb112739");  // Get a connection from the pool
        //stmt = conn.createStatement();
        // ResultSet rset = stmt.executeQuery(sqlStr);
        Connection conn = null;
        Statement stmt = null;
        try {
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
            HttpSession session = request.getSession(false); // check if session exists
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
        } catch (SQLException ex) {
            out.println("<h3>Service not available. Please try again later!</h3></body></html>");
            Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();  // Return the connection to the pool
                }
            } catch (SQLException ex) {
                Logger.getLogger(EntryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
