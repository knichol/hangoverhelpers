package enterprise.web_jpa_war.servlet;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Validate", urlPatterns = {"/Validate"})
public class Validate extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String uname = request.getParameter("uName");
            String pass = request.getParameter("Password");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("select * from Customer where uName ='" + uname + "'");

            if (rs.next()) {
                if ((uname.equals(rs.getString(7))) && (pass.equals(rs.getString(5)))) {
                    // New session creation
                    HttpSession session = request.getSession(true);

                    // Setting session attributes on login
                    session.setAttribute("uname", uname);
                    session.setAttribute("user", rs.getNString("Name"));
                    session.setAttribute("email", rs.getNString("Email"));
                    session.setAttribute("address", rs.getNString("Address"));
                    session.setAttribute("phone", rs.getNString("Phone"));

                    // Creating new cart session
                    ShoppingCart cart = new ShoppingCart();
                    session.setAttribute("cart", cart);

                    // Send request to Welcome.jsp page
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");

                    view.forward(request, response);

                } else {
                    out.println("<div style='font-size:30px; margin-top:100px;color:white'>"
                            + "Username and password do not match!</div>");
                    RequestDispatcher view = request.getRequestDispatcher("login.jsp");

                    view.include(request, response);
                }
            } else {
                out.println("<div style='font-size:30px; color:red'>"
                        + "Please fill userid and password" + "</div >");

                RequestDispatcher view = request.getRequestDispatcher("login.jsp");
                view.include(request, response);
            }
        } catch (Exception e) {
        } finally {
            out.close();
        }
    }
}
