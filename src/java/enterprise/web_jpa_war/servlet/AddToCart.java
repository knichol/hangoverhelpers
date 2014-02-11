/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.servlet;
import enterprise.web_jpa_war.entity.*;
import enterprise.web_jpa_war.servlet.*;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kevin
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/AddToCart"})

public class AddToCart extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
                
        String productID = request.getParameter("product");
        if("1".equals(productID)){
            cart.addItem(new Packages(1));
        }
        
        //send request to Welcome.jsp page
        RequestDispatcher view
                = request.getRequestDispatcher("Services.jsp");

        view.forward(request, response);

    }
}
