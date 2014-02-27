<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Home</title><link  rel="shortcut icon" href="favicon.ico"/>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <p style="margin-top:-54px; margin-left:-50px;" class="aligncenter">
            <td><a title="Home"href="index.jsp"class="test">Home</a></td>
            <td>&nbsp;</td>
            <td><a title="Services" href="Services.jsp"class="test">Services</a></td>
            <td>&nbsp;</td>
            <td><a href="About.jsp"title="About Us"class="test">About</a></td>
            <td>&nbsp;</td>
            <td><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></td>
            </p>
            <p class="alignright">
                <%  String uname = (String) session.getAttribute("uname");
                    String name3 = "Logout";
                    if (session.getAttribute("uname") == null) {
                        name3 = "";
                        uname = "";
                    }
                %>    
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>
            <td>&nbsp;</td>
            <a class="test" href="Logout"><%=name3%></a>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>    
            <div class="cart">
                <form>
                </form>
            </div>
</body>
</html>
