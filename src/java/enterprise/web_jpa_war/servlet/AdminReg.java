package enterprise.web_jpa_war.servlet;

import enterprise.web_jpa_war.entity.Customer;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import javax.persistence.PersistenceUnit;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityManager;
import javax.annotation.Resource;
import javax.transaction.UserTransaction;

/**
 * The servlet class to insert Person into database
 */
@WebServlet(name = "AdminReg", urlPatterns = {"/AdminReg"})
public class AdminReg extends HttpServlet {

    @PersistenceUnit
    //The emf corresponding to 
    private EntityManagerFactory emf;
    @Resource
    private UserTransaction utx;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        assert emf != null;  //Make sure injection went through correctly.
        EntityManager em = null;
        try {

            //Get the data from user's form
            String uname = (String) request.getParameter("uName");
            String name = (String) request.getParameter("Name");
            String pass = (String) request.getParameter("Password");
            String email = (String) request.getParameter("Email");
            String address = (String) request.getParameter("Address");
            String phone = (String) request.getParameter("Phone");

            //Create a person instance out of it
            Customer cust = new Customer(uname, name, pass, email, address, phone);

            utx.begin();
            em = emf.createEntityManager();
            em.persist(cust);
            utx.commit();

            //send request to Welcome.jsp page
            RequestDispatcher view = request.getRequestDispatcher("AdminCust.jsp");

            view.forward(request, response);

        } catch (Exception ex) {
            throw new ServletException(ex);
        } finally {
            //close the em to release any resources held up by the persistebce provider
            if (em != null) {
                em.close();
            }
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
