<%-- 
    Document   : Admin
    Created on : Feb 27, 2014, 12:38:22 PM
    Author     : Kevin
--%>

<%@page import="java.sql.*"%>
<html>
    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Package List</title>
    </head>
    <body>
        <div style="text-align: center;">
            <% if (session.getAttribute("admin") == null) {
                    // If not logged in as admin
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                }
            %>
            <h1>List of Packages Currently in Database</h1>
            <div><a href="Admin.jsp" title="cAdmin"style="text-decoration:none;" >
                    Back To Admin Panel</a></div><br>
            </body>
            <form method="post">

                <table align="center"style="text-align: center;"border="2">
                    <tr>
                    <th>PACKAGE ID</th>
                    <th>PACKAGE NAME</th>
                    <th>PACKAGE PRICE</th>
                    <th>REMAINING STOCK</th>    
                    </tr>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                        Statement s = con.createStatement();
                        ResultSet rs = s.executeQuery("select * from Packages");
                        while (rs.next()) {
                    %>
                    <tr>
                    <td><%=rs.getString("Package_ID")%></td>
                    <td><%=rs.getString("Name")%></td>
                    <td><%=rs.getString("Price")%></td> 
                    <td><%=rs.getString("Stock")%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                <%
                    rs.close();
                    s.close();
                    con.close();
                %>
            </form>

            <form style="text-align: center;"id ="UpdateStock" action="UpdatePackage" method="post">
                Update Stock</br>
                <input type="text" id="ID" title="StockID" name="Package_ID" placeholder="Stock ID"></br>
                <input type="text" id="newStock" title="nStock" name="Stock" placeholder="New Stock Amount"></br>
                <input type="submit" value="Update" title="Update">
            </form>	
        </div>
</html>