<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:forward page="index.jsp"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Persons</title>
    </head>
    <body>

    <h1>List of Persons currently in Database</h1>
    
<table id="personList" border="3">
<tr >
    <th bgcolor=>ID Number</th>
    <th bgcolor=>Name</th>
    <th bgcolor=>Email</th>
    <th bgcolor=>Address</th>
    <th bgcolor=>Phone</th>
    <th bgcolor=>Password</th>
</tr>
<c:forEach var="cust" begin="0" items="${requestScope.personList}">
<tr>
    <td>${cust.customerID}</td>
    <td>${cust.name}</td> 
    <td>${cust.email}&nbsp;&nbsp;</td> 
    <td>${cust.address}&nbsp;&nbsp;</td>
    <td>${cust.phone}&nbsp;&nbsp;</td>
    <td>${cust.password}&nbsp;&nbsp;</td>
</tr>

</c:forEach>

</table>
<!--<a href="CreatePerson.jsp"><strong>Create a Person Record</strong></a>
<a href="register.jsp"><strong>Register</strong></a>
<a href="login.jsp"><strong>Login</strong></a>-->
</body>
</html>
