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
                <%  String address = (String) session.getAttribute("address");
                    String email = (String) session.getAttribute("email");
                    String phone = (String) session.getAttribute("phone");
                    String user = (String) session.getAttribute("user");
                    String uname = (String) session.getAttribute("uname");
                    String login = "";
                    String logout = "Logout";
                    String register = "";
                    if (session.getAttribute("uname") ==null) {
                        register = "Register";
                        login = "Login";
                        logout = "";
                        user = "";
                        uname="";
                    }
                %>    
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>             
                <a  class="test"href="register.jsp" title="Register"><%=register%></font></a>
            <td>&nbsp;</td>
             <a class="test" href="Logout"><%=logout%></a>
            <a class="test"href="login.jsp" title="Login"><%=login%></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body >
    <div class="table">
    <div class="row">
    <div class="profile">
        <form method="post" action=""></br>
            <a class="profilePic"></a></br>
            <a class="username"><%=user%></a>
            </br>
            Email: <%=email%></br>
            Address: <%=address%></br>
            Phone: <%=phone%></br>
        </form>
    </div>
    <div class="cart">
        <form name="input"method="post" action="project.php"></br>
            Cart</br>
        </form>
    </div>
    </div></div>
</body>
</html>