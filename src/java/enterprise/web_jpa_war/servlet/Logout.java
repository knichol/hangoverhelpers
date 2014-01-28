package enterprise.web_jpa_war.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name="Logout", urlPatterns={"/Logout"})

public class Logout extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            session.invalidate();
            
            response.sendRedirect("index.jsp");
            
            // Might need later or not. Who knows? ^_^
            /*out.println("<div style='float:left;font-size:25px;'>" + "click here to "
                    + "<a href='index.jsp'>go to index</a></div>");
            out.println("<h1 align='center'>" + "Logout Sucessfully..." + "</h1>");*/
            
        } finally {
            out.close();
        }
    }
}
