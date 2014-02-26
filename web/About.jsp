<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - About</title><link  rel="shortcut icon" href="favicon.ico"/>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <p class="aligncenter">
            <td><a title="Home"href="index.jsp"class="test">Home</a></td>
            <td>&nbsp;</td>
            <td><a title="Services" href="Services.jsp"class="test">Services</a></td>
            <td>&nbsp;</td>
            <td><a href="About.jsp"title="About Us"class="test">About</a></td>
            <td>&nbsp;</td>
            <td><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></td>
            </p>
            <p class="alignright">
                <% String address = (String) session.getAttribute("address1");
                    String email = (String) session.getAttribute("email1");
                    String phone = (String) session.getAttribute("phone1");
                    String user = (String) session.getAttribute("user");
                    String uname = (String) session.getAttribute("uname");
                    String name2 = "";
                    String name3 = "Logout";
                    String name1a = "";
                    if (session.getAttribute("uname") == null) {
                        name1a = "Register";
                        name2 = "Login";
                        name3 = "";
                        user = "";
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
    <div class="about">
        <form></br>
            <font style="font-size: 150%;">About Us</font>
            </br></br>
            Hangover Helpers is a quick and simple service which came about when the three creators were deathly hung-over and in need of a saviour. </br>
            Cravings and laziness were not our friends that day and we were dying for a service which we could simply go and send someone to cure us.</br>
            Hangover Helpers is designed for those who have lost the will to move or function after a heavy night out.</br> Our simple website allows the most novice technological user to quickly and easily choose products from our site. We offer a wide range from hot food to ice pops so whatever you are feeling it can be delivered to your door in seconds!
            We also offer the option of cleaner packages, for those days where the load is just too much. </br></br>We can send as many helpers as you need to help you with your deathly "rattledness".  

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
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div></form>
</div>
</body>
</html>