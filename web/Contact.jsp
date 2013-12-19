<html>
    <head>
        <title>HangoverHelpers - Contact</title>
    <div id="background">
        <img src="http://i.imgur.com/y1AGOMf.jpg" class="stretch"/>
    </div>

    <div style="margin-right:auto; margin-left:4px; margin-top:14px;">
        <a title="HangoverHelpers"href="index.jsp" style="text-decoration: none;">
            <img src="http://i.imgur.com/O23t68w.jpg"width="70" height="60" alt="Hangover Helpers"/>
        </a>
    </div>
    <div style=" margin-left: auto;margin-right:auto;">
        <p style="margin-top:-32px; margin-left:80px;"class="alignleft">
            <a title="HangoverHelpers">
                <font size="6" color="white" face="Bradley hand ITC" >HangoverHelpers</a></font></p>

        <p style="margin-top:-54px;" class="aligncenter">
        <table border="0">
            <tr>
                <td><a title="Home"href="index.jsp"class="test">
                        <font color="white" size ="5" face="Bradley hand ITC">Home</font></a></td>
                <td>&nbsp;</td>
                <td><a title="Services" href="Services.jsp"class="test">
                        <font color="white" size ="5" face="Bradley hand ITC">Services</font></a></td>
                <td>&nbsp;</td>

                <td><a href="Help.jsp" title="Help"class="test">
                        <font color="white" size ="5" face="Bradley hand ITC">Help</font></a></td>
                <td>&nbsp;</td>
                <td><a title="Contact" href="Contact.jsp"class="test">
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

<style type='text/css'>
    .alignleft {
        float: left;
        text-align:left;
        width:33.33333%;
    }
    .aligncenter {
        float: left;
        text-align:center;
        width:33.33333%;
    }
    .test{
        text-decoration: none;       
        padding-right:0;
        padding: 5px 5px 5px 5px;
        background-repeat:repeat;
        border-radius: 5px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
    }
    .test:hover { 
        background-color: #ADC0DA;
        text-decoration: none;
        box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    }
    .help {
        text-decoration: none;
        padding-right:0;
        position: relative;
        top: 80px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
        padding: 5px 5px 5px 5px;
        background-color: #7092BE;
        background-repeat:repeat;
        background-position: right; 
        border-radius: 5px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        width: 400px;
        height: 400px;
    }
    .btn{
        padding-right:0;
        padding: 5px 5px 5px 5px; 
        border-radius: 5px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        width:90px; 
        height:30px;
        background-image:url('http://i.imgur.com/WvJjCS2.jpg');
        color:white;
        border: none;
    }
        .btn:hover {    
        box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    }
    textarea {
        width: 200px;
        height: 50px;
        max-width: 400px; 
        max-height: 200px;
    }
    input:focus,textarea:focus,select:focus{
        border:2px solid #fafafa; 
        box-shadow:0 0 10px #7DFDFE;
        -webkit-box-shadow:0 0 10px #7DFDFE;
        -moz-box-shadow:0 0 10px #7DFDFE;
        outline: none;
    }
    .alignright {
        float: right;
        text-align:right;
        width:33.33333%;
    }
    #background {
        width: 100%; 
        height: 80px; 
        position: fixed; 
        left: 0px; 
        top: 0px;
        z-index: -1; /* Ensure div tag stays behind content; -999 might work, too. */
    }
    .stretch {
        width:100%;
        height:100%;
    }

    .login {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0,0,0,0.5);
        z-index: 99999;
        opacity:0;
        -webkit-transition: opacity 500ms ease-in;
        -moz-transition: opacity 500ms ease-in;
        transition: opacity 500ms ease-in;
        pointer-events: none;
    }
    .login:target {
        opacity:1;
        pointer-events: auto;
    }

    .login > div {
        position: relative;
        top: 80px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
        margin: 10% auto;
        padding: 5px 20px 13px 20px;
        width: 300px;
        height: 300px;
        border-radius: 50px;
        -webkit-border-radius: 50px;
        -moz-border-radius: 50px;
        background: url(http://i.imgur.com/LhLujbv.jpg) no-repeat;
        box-shadow: 0 0 8px rgba(0, 0, 0, .8);
        -webkit-box-shadow: 0 0 8px rgba(0, 0, 0, .8);
        -moz-box-shadow: 0 0 8px rgba(0, 0, 0, .8);
    } 
    .close {
        background: #606061;
        color: #FFFFFF;
        line-height: 25px;
        position: absolute;
        right: -12px;
        text-align: center;
        top: -10px;
        width: 24px;
        text-decoration: none;
        font-weight: bold;
        -webkit-border-radius: 12px;
        -moz-border-radius: 12px;
        border-radius: 12px;
        -moz-box-shadow: 1px 1px 3px #000;
        -webkit-box-shadow: 1px 1px 3px #000;
        box-shadow: 1px 1px 3px #000;

    }
    .close:hover { 
        background: #7092BE; 
    }
</style>
</head>
<body background ="http://i.imgur.com/D5HT75P.jpg">


    <div class="help">
        <form method="post" action="mailto:ciansheehy92@gmail.com"></br>
            <font size ="5"color="white"face="Bradley hand ITC">
            Contact Us</font>
            </br>
            <input type="text" title="Name"  id="Name"  name="Name"  placeholder="Fullname" style="text-align: center; width:200px; height:30px;"></br></br>
            <input type="text" title="Email" id="Email" name="Email" placeholder="Email" style="text-align: center; width:200px; height:30px;"></br></br>
            <textarea maxlength="400"placeholder="Dear Sir/Madam...(400 Characters Max)"></textarea>
            <input class="btn"value="Send Email"type="submit"style="position: absolute;margin-left: auto;margin-right: auto;left: 0;right: 120px;bottom:10px;"/>          
            <input type="reset" class="btn" value="Reset" style="position: absolute;margin-left: auto;margin-right: auto;left: 120px;right: 0;bottom:10px;">
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

