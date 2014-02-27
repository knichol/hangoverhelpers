<%@page import="java.sql.*"%>
<html>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Package List</title>
    </head>
    <body>

    <h1>List of Packages Currently in Database</h1>

</body>
<form method="post">

<table border="2">
<tr>
    <td>ID</td>
    <td>NAME</td>
    <td>PRICE</td>
    <td>STOCK</td>    
</tr>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
    Statement s = con.createStatement();
    ResultSet rs = s.executeQuery("select * from Packages");

    while(rs.next())
    {
%>
<tr>
    <td><%=rs.getString("Package_ID") %></td>
    <td><%=rs.getString("Name") %></td>
    <td><%=rs.getString("Price") %></td> 
    <td><%=rs.getString("Stock") %></td>
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