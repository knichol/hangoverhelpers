package enterprise.web_jpa_war.servlet;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "AdminValidate", urlPatterns = {"/AdminValidate"})
public class AdminValidate extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String name = request.getParameter("aName");
            String pass = request.getParameter("Password");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("select * from Admin where Name ='" + name + "' and hasAdmin = " + true + "");

            if (rs.next()) {
                if ((name.equals(rs.getString(2))) && (pass.equals(rs.getString(3)))) {

                    HttpSession session = request.getSession(true);
                    session.setAttribute("admin", name);

                    RequestDispatcher view = request.getRequestDispatcher("Admin.jsp");

                    view.forward(request, response);

                } else {
                    out.println("<div style='font-size:30px; color:red; text-align: center;'>"
                            + "Admin name and password do not match!" + "</div>");
                    RequestDispatcher view = request.getRequestDispatcher("AdminLogin.jsp");

                    view.include(request, response);
                }
            } else {
                out.println("<div style='font-size:30px; color:red; text-align: center;'>"
                        + "Please enter admin name and password" + "</div >");

                RequestDispatcher view = request.getRequestDispatcher("AdminLogin.jsp");
                view.include(request, response);
            }
        } catch (Exception e) {
        } finally {
            out.close();
        }
    }
}
