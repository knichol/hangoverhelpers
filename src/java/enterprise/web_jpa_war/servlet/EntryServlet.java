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
            // conn = pool.getConnection();  // Get a connection from the pool
            stmt = conn.createStatement();
            String sqlStr = "SELECT * FROM Packages";
            ResultSet rset = stmt.executeQuery(sqlStr);

            out.println("<html><head><title>Welcome to YaEshop</title></head><body>");
            out.println("<h2>Welcome to Yet Another E-BookShop</h2>");
            out.println("<form method='get' action='search'>");

            // A pull-down menu of all the authors with a no-selection option
            out.println("Choose an Author: <select name='Name' size='1'>");
            out.println("<option value=''>Select...</option>");  // no-selection
            while (rset.next()) {  // list all the authors
                String Name = rset.getString("Name");
                out.println("<option value='" + Name + "'>" + Name + "</option>");
            }
            out.println("</select><br />");
            out.println("<p>OR</p>");

            // A text field for entering search word for pattern matching
            out.println("Search \"Title\" or \"Author\": <input type='text' name='Price' />");

            // Submit and reset buttons
            out.println("<br /><br />");
            out.println("<input type='submit' action='QueryServlet'value='SEARCH' />");
            out.println("<input type='reset' value='CLEAR' />");
            out.println("</form>");


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