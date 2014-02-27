<%@page import="java.sql.*"%>
<html>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Customer List</title>
    </head>
    <body>

    <h1>List of Customers Currently in Database</h1>

</body>
<form method="post">

<table border="2">
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

    while(rs.next())
    {
%>
<tr>
    <td><%=rs.getString("Customer_ID") %></td>
    <td><%=rs.getString("uName") %></td>
    <td><%=rs.getString("Password") %></td> 
    <td><%=rs.getString("Name") %></td>
    <td><%=rs.getString("Email") %></td>
    <td><%=rs.getString("Address") %></td>
    <td><%=rs.getString("Phone") %></td>
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
</html>