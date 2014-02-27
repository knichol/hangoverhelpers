<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Register</title><link  rel="shortcut icon" href="favicon.ico"/>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <table align="center">
            <th><a title="Home"href="index.jsp"class="test">Home</a></th>
            <th>&nbsp;</th>
            <th><a title="Services" href="Services.jsp"class="test">Services</a></th>
            <th>&nbsp;</th>
            <th><a href="About.jsp"title="About Us"class="test">About</a></td>
            <th>&nbsp;</th>
            <th><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></th>
            </table>
            <p class="alignright">
                <%  String uname = (String) session.getAttribute("uname");
                    String name2 = "";
                    String name3 = "Logout";
                    String name1a = "";
                    if (session.getAttribute("uname") == null) {
                        name1a = "Register";
                        name2 = "Login";
                        name3 = "";
                        uname = "";
                    }
                %>    
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>          
                <a  class="test"href="register.jsp" title="Register"><%=name1a%></font></a>
            <td>&nbsp;</td>
            <a class="test" href="Logout"><%=name3%></a>
            <a class="test"href="#login" title="Login"><%=name2%></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>
    <div class="register">
        <form style="width:400px; text-align:center; "id ="register" action="Register" method="post">
            Register</br>
            <input type="text" id="Name" title="Name" name="Name" placeholder="Fullname"></br></br>
            <input type="text" id="uName" title="Username" name="uName" placeholder="Username"></br></br>
            <input type="password" title="Password" id="Password" name="Password" placeholder="Password"></br></br>
            <input type="text" title="Email" id="Email "name="Email" placeholder="Email"></br></br>
            <input type="text" title="Address" id="Address" name="Address" placeholder="Address"></br></br>
            <input type="text" title="Phone Number" id="Phone" name="Phone" placeholder="Phone Number"></br></br>
            <input class="btn" type="submit" id="CreateRecord" value="Register" title="Register">
        </form>	
    </div>
    <div id="login" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form id ="loginform" action="Validate"method="post">
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Username"id="uName"name="uName" placeholder="Username"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a><div>
                    <a href="#AdminLogin" title="AdminLogin"style="text-decoration:none;" >
                        <font size="3"color="white" style="text-align:center;">Admin Login</font></a></div></form>
        </div></div>
       <div id="AdminLogin" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
           <form id =""action="AdminValidate"method="post">
                </br></br><font size ="5">Admin Login</font></br></br>
                <input type="text" title="Admin"id="aName"name="aName" placeholder="Admin Name"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></form>
        </div></div>
</body>
</html>