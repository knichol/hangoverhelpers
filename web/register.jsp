<html>
    <head>
        <title>HangoverHelpers - Services</title>
    <div id="background">
        <div style="position: fixed;top: 2%;left: 1%;">
            <a title="HangoverHelpers"href="index.jsp" style="text-decoration: none;">
                <img src="http://i.imgur.com/O23t68w.jpg"width="70" height="60" alt="Hangover Helpers"/>
            </a>
        </div>
        <div style=" margin-left: auto;margin-right:auto;">
            <p style="margin-top:-32px; margin-left:80px;"class="alignleft">
                <a title="HangoverHelpers">
                    <font size="6" color="white" face="Bradley hand ITC" >HangoverHelpers</a></font></p>
            <p style="margin-top:-54px;margin-left:-50px;" class="aligncenter">
            <table border="0">
                <tr>
                    <td><a title="Home"href="index.jsp"class="test">
                            <font color="white" size ="5" face="Bradley hand ITC">Home</font></a></td>
                    <td>&nbsp;</td>
                    <td><a title="Services" href="Services.jsp"class="test">
                            <font color="white" size ="5" face="Bradley hand ITC">Services</font></a></td>
                    <td>&nbsp;</td>
                    <td><a href="About.jsp"title="About Us"class="test">
                            <font color="white" size ="5" face="Bradley hand ITC">About</font></a></td>
                    <td>&nbsp;</td>
                    <td><a title="Contact Us" href="Contact.jsp"class="test">
                            <font color="white" size ="5" face="Bradley hand ITC">Contact</font></a></td>
                </tr>

            </table></p>
            <p class="alignright" style="margin-top:-24px; ">
                <a  class="test"href="register.jsp" title="Register">
                    <font color="white" size ="5" face="Bradley hand ITC"
                          >        
                    Register</font></a>
            <td>&nbsp;</td>
            <a class="test"href="#login" title="Login">
                <font color="white" size ="5" face="Bradley hand ITC">      
                Login</font></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body background ="http://i.imgur.com/D5HT75P.jpg">
    <div class="register">
        <form  id ="register" action="Register" method="post" style="width:400px; text-align:center; margin-right:auto; margin-left:auto; margin-top:30px; border:0px solid #000;"id ="register" action="Register" method="post">
            <font size="6" color="white" face="Bradley hand ITC">Register</font></br>
            <input type="text" id="Name" title="Name" name="Name" placeholder="Fullname" style="text-align: center; width:200px; height:30px;"></br></br>
            <input type="password" title="Password" id="Password" name="Password" placeholder="Password" style="text-align: center; width:200px; height:30px;"></br></br>
            <input type="text" title="Email" id="Email "name="Email" placeholder="Email" style="text-align: center; width:200px; height:30px;"></br></br>
            <input type="text" title="Address" id="Address" name="Address" placeholder="Address" style="text-align: center; width:200px; height:30px;"></br></br>
            <input type="text" title="Phone Number" id="Phone" name="Phone" placeholder="Phone Number" style="text-align: center; width:200px; height:30px;"></br></br>
            <input class="btn" type="submit" id="CreateRecord" value="CreateRecord">
        </form>	
    </div>
    <div id="login" class="login">
        <div>
            <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
            </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">Login</font>
            </br></br>
            <input type="text" title="Email"id="Email "name="Email" placeholder="Email" style="text-align: center;width:200px; height:30px;"></br></br>
            <input type="password" title="Password"id="Password" name="Password" placeholder="Password" style="text-align: center; width:200px; height:30px;"></br></br>
            <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
            <a href="register.jsp" title="Register"style="text-decoration:none;" >
                <font size="3"color="white" style="text-align:center;">Not Registered?<font></a></div>
    </div>
</body>
</html>