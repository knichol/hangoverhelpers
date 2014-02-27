<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%  if(session.getAttribute("admin")==null)
            {
                // If not logged in as admin
                RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                view.forward(request, response);
            }
        
            String admin = "";
            admin = (String) session.getAttribute("admin");%>
                   
        
        <h1>Hello Admin! <%=admin%></h1>
        <a href="AdminCust.jsp" title="cAdmin"style="text-decoration:none;" >
            View/Edit Customers</a><div>
        <a href="AdminPackage.jsp" title="pAdmin"style="text-decoration:none;" >
            View/Edit Packages</a><div><div>
        <a href="Logout" title="AdminLogout"style="text-decoration:none;">Logout</a>
    </body>
</html>
