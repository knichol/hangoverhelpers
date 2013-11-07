<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a Person Record</title>
    </head>
    <body>

    <h1>Create a Person record</h1>
    <form id="createPersonForm" action="CreatePerson" method="post">
    <table>
        <tr><td>Name:</td><td><input type="text" id = "Name" name="Name" /></td></tr>
        <tr><td>Email</td><td><input type="text" id = "Email" name="Email" /></td></tr>
        <tr><td>Address</td><td><input type="text" id = "Address" name="Address" /></td></tr>
    </table>
    <input type="submit" id="CreateRecord" value="CreateRecord" />
    </form>
<a href="ListPerson"><strong>Go to List of persons</strong></a>
</body>
</html>
