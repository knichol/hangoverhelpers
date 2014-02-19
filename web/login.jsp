<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Profile</title>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <p style="margin-top:-54px; margin-left:-50px;" class="aligncenter">
            <table border="0">
                <tr>
                    <td><a title="Home"href="index.jsp"class="test">Home</a></td>
                    <td>&nbsp;</td>
                    <td><a title="Services" href="Services.jsp"class="test">Services</a></td>
                    <td>&nbsp;</td>
                    <td><a href="About.jsp"title="About Us"class="test">About</a></td>
                    <td>&nbsp;</td>
                    <td><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></td>
                </tr></table></p>                       
            <p class="alignright">
                <% String address = (String) session.getAttribute("address1");
                    String email = (String) session.getAttribute("email1");
                    String phone = (String) session.getAttribute("phone1");
                    String user = (String) session.getAttribute("user");
                    String uname = (String) session.getAttribute("uname");
                    String name2 = "";
                    String name3 = "Logout";
                    String name1a = "";
                    if (session.getAttribute("user") == null) {
                        name1a = "Register";
                        name2 = "Login";
                        name3 = "";
                        user = "";
                        uname="";
                    }
                %>   
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>
                <a  class="test"href="register.jsp" title="Register"><%=name1a%></font></a>
            <td>&nbsp;</td>
            <a class="test" href="Logout"title="Logout"><%=name3%></a>
            <a class="test"href="login.jsp" title="Login"><%=name2%></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>
    <div class="help"><form id ="loginform" action="Validate"method="post">
        </br>Login</br></br>
        <input type="text" title="Username"id="uName"name="uName" placeholder="Username"></br></br>
        <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
        <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
        <a href="register.jsp" title="Register"style="text-decoration:none;" >
            <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></form>
    </div>
</body>
</html>
