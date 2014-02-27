<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%  String admin = "";
            admin = (String) session.getAttribute("admin");%>
                   
        
        <h1>Hello Admin! <%=admin%></h1>
        <a href="CustAdmin.jsp" title="cAdmin"style="text-decoration:none;" >
            View/Edit Customers</a><div>
        <a href="PackageAdmin.jsp" title="pAdmin"style="text-decoration:none;" >
            View/Edit Packages</a><div
    </body>
</html>
