<%@page import="java.sql.*"%>
<html>
    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Contact Messages List</title>
    </head>
    <body>
        <div style="text-align: center;">
            <% if (session.getAttribute("admin") == null) {
                    // If not logged in as admin
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                }
            %>

            <h1>List of Contact Messages Currently in Database</h1>
            <div><a href="Admin.jsp" title="cAdmin"style="text-decoration:none;" >
                    Back To Admin Panel</a></div><br>

            <form  method="post">

                <table align="center"style="text-align: center;" border="2">
                    <tr>
                    <th>MESSAGE ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>MESSAGE CONTENTS</th>    
                    </tr>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                        Statement s = con.createStatement();
                        ResultSet rs = s.executeQuery("select * from Contact");

                        while (rs.next()) {
                    %>
                    <tr>
                    <td><%=rs.getString("message_ID")%></td>
                    <td><%=rs.getString("Name")%></td>
                    <td><%=rs.getString("Email")%></td> 
                    <td><%=rs.getString("Mail")%></td>
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
        </div>
    </body>
</html>