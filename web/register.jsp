<%-- 
    Document   : register
    Created on : Nov 14, 2013, 12:11:36 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>		
	<body>
            <h1>Register New Customer</h1>
        	<form id ="register" action="Register" method="post">			
                <table>	
                    <tr><td>Name:</td><td><input type="text" id="Name" name="Name"></td></tr>
                    <tr><td>Password:</td><td><input type="password" id="Password" name="Password"></td></tr>
                    <tr><td>Email:</td><td><input type="text" id="Email "name="Email"></td></tr>
                    <tr><td>Address:</td><td><input type="text" id="Address" name="Address"></td></tr>
                    <tr><td>Phone:</td><td><input type="text" id="Phone" name="Phone"></td></tr>		
                </table>
                <input type="submit" id="CreateRecord" value="CreateRecord">			
		</form>
	</body>
</html>