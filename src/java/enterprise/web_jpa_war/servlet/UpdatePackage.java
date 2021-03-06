package enterprise.web_jpa_war.servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * The servlet class to update stock
 */

@WebServlet(name = "UpdatePackage", urlPatterns = {"/UpdatePackage"})
public class UpdatePackage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        try {

            //Get the data from user's form
            int id = Integer.parseInt(request.getParameter("Package_ID"));
            int nStock = Integer.parseInt(request.getParameter("Stock"));

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
            Statement s = con.createStatement();
            s.executeUpdate("update Packages set Stock = '" + nStock + "' where Package_ID = '" + id + "'");

            //send request to Welcome.jsp page
            RequestDispatcher view = request.getRequestDispatcher("AdminPackage.jsp");

            view.forward(request, response);

        } catch (Exception ex) {
            throw new ServletException(ex);
        } finally {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
