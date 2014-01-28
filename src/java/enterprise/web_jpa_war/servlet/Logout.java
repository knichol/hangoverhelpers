package enterprise.web_jpa_war.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Logout extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter out = response.getWriter();
 try {
 HttpSession session=request.getSession();
 session.invalidate();
 out.println("<div style='float:left;font-size:25px;'>"+"click here to "
       +"<a href='login.html'>login</a></div>");
 out.println("<h1 align='center'>"+"Logout Sucessfully..."+"</h1>");
 }finally {            
 out.close();
 }
 }
}