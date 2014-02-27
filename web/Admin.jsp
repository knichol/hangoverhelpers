<%-- 
    Document   : Admin
    Created on : Feb 27, 2014, 12:38:22 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("admin") == null) {
                // If not logged in as admin
                RequestDispatcher view = request.getRequestDispatcher("AdminLogin.jsp");
                view.forward(request, response);
            }

            String admin = (String) session.getAttribute("admin");
        %>
<div style="text-align: center;">
        <h1>Hello <%=admin%>!</h1>
        <div><a href="AdminCust.jsp" title="cAdmin"style="text-decoration:none;" >
                View/Edit Customers</a></div>
        <div><a href="AdminPackage.jsp" title="pAdmin"style="text-decoration:none;" >
                View/Edit Packages</a></div>
        <div><a href="AdminContact.jsp" title="cAdmin"style="text-decoration:none;" >
                View Contact Messages</a></div>
        <div><a href="Logout" title="AdminLogout"style="text-decoration:none;">Logout</a></div>
    
</div></body>
</html>
