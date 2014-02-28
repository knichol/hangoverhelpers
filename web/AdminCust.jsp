<%@page import="java.sql.*"%>
<html>
    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Customer List</title>
    </head>
    <body>
        <div style="text-align: center;">
            <% if (session.getAttribute("admin") == null) {
                    // If not logged in as admin
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                }
            %>
            <h1>List of Customers Currently in Database</h1>
            <div><a href="Admin.jsp" title="cAdmin"style="text-decoration:none;" >
                    Back To Admin Panel</a></div><br>
            </body>
            <form method="post">

                <table align="center"style="text-align: center;"border="2">
                    <tr>
                    <td>ID</td>
                    <td>USERNAME</td>
                    <td>PASSWORD</td>
                    <td>FULLNAME</td>
                    <td>EMAIL</td>
                    <td>ADDRESS</td>
                    <td>PHONE</td>
                    </tr>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                        Statement s = con.createStatement();
                        ResultSet rs = s.executeQuery("select * from Customer");

                        while (rs.next()) {
                    %>
                    <tr>
                    <td><%=rs.getString("Customer_ID")%></td>
                    <td><%=rs.getString("uName")%></td>
                    <td><%=rs.getString("Password")%></td> 
                    <td><%=rs.getString("Name")%></td>
                    <td><%=rs.getString("Email")%></td>
                    <td><%=rs.getString("Address")%></td>
                    <td><%=rs.getString("Phone")%></td>
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


            <form id ="DeleteUser" action="DeleteCust" method="post">
                Delete User by ID Number (CANNOT BE UNDONE)</br>
                <input type="text" id="ID" title="StockID" name="Cust_ID" placeholder="Customer ID"></br>
                <input class="btn" type="submit" value="Update" title="Update">
            </form>

            <div style="text-align: center;"class="register">
                <form style="text-align: center;"id ="register" action="Register" method="post">
                    Add New User</br>
                    <input type="text" id="Name" title="Name" name="Name" placeholder="Fullname"></br>
                    <input type="text" id="uName" title="Username" name="uName" placeholder="Username"></br>
                    <input type="password" title="Password" id="Password" name="Password" placeholder="Password"></br>
                    <input type="text" title="Email" id="Email "name="Email" placeholder="Email"></br>
                    <input type="text" title="Address" id="Address" name="Address" placeholder="Address"></br>
                    <input type="text" title="Phone Number" id="Phone" name="Phone" placeholder="Phone Number"></br>
                    <input class="btn" type="submit" id="CreateRecord" value="Add New User" title="Register">
                </form>	
            </div>
        </div>
</html>