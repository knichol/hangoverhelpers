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
 * The sevelet class to insert Person into database
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    @PersistenceUnit
    //The emf corresponding to 
    private EntityManagerFactory emf;
    @Resource
    private UserTransaction utx;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     */
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

            //begin a transaction
            utx.begin();
            //create an em. 
            //Since the em is created inside  transaction, it is associsated with 
            //the transaction
            em = emf.createEntityManager();
            //persist the person entity
            em.persist(cust);
            //commit transaction which will trigger the em to 
            //commit newly created entity into database
            utx.commit();

            //New session creation
            HttpSession session = request.getSession(true);
            //setting attribute on session
            session.setAttribute("uname", uname);
            session.setAttribute("user", name);
            session.setAttribute("email", email);
            session.setAttribute("address", address);
            session.setAttribute("phone", phone);

            // Creating new cart session
            ShoppingCart cart = new ShoppingCart();
            session.setAttribute("cart", cart);

            //send request to Welcome.jsp page
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");

            view.forward(request, response);

            //Forward to ListPerson servlet to list persons along with the newly
            //created person above
            request.getRequestDispatcher("ListPerson").forward(request, response);
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
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
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
