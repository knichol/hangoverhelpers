<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Home</title>
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
                <% String name1 = (String)session.getAttribute("user");
                String name2 = "";
                String name3 = "Logout";
                if (session.getAttribute("user")== null){
                    name1 = "Register";
                    name2 = "Login";
                    name3 = "";}
                %>   
                <a  class="test"href="register.jsp" title="Register"><%=name1%></font></a>
            <td>&nbsp;</td>
             <a class="test" href="Logout"><%=name3%></a>
            <a class="test"href="login.jsp" title="Login"><%=name2%></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>
    <% String name = (String)session.getAttribute("user"); %>
    <% if (session.getAttribute("user")== null)
        name = "";%>
    
    <p class="homepage">
        <font size="7">Welcome to HangoverHelpers <%=name%></font></br></br>
        <font size="5">&ensp;&ensp;A fast, friendly and intriguing delivery service</font>
    </p>
</body>
</html>
