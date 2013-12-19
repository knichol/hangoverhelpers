<html>
    <head>
        <title>HangoverHelpers - Services</title>
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
                 <td>&nbsp;</td>
                <td><a title="Services" href="Services.jsp"class="test">
                        <font color="white" size ="5" face="Bradley hand ITC">Services</font></a></td>
                <td>&nbsp;</td>
                 <td>&nbsp;</td>
                <td><a href="Help.jsp"title="Help"class="test">
                        <font color="white" size ="5" face="Bradley hand ITC">Help</font></a></td>
                <td>&nbsp;</td>
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
     <td>&nbsp;</td>
    <a class="test"href="#login" title="Login">
        <font color="white" size ="5" face="Bradley hand ITC">      
        Login</font></a></p>
</div>
<style content="text/css">
        .test{
         text-decoration: none;
    }
    .test:hover { 
        text-decoration: none;
        padding-right:0;
        padding: 5px 5px 5px 5px;
        background-color: #ADC0DA;
        background-repeat:repeat;
        background-position: right; 
        border-radius: 5px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
        -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    }
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

    .close:hover { background: #7092BE; }

</style> 
</head>
<body background ="http://i.imgur.com/D5HT75P.jpg">

    <form name="welcome" >
        <p style=" text-align:left; margin-top: 80px;margin-left: 60px;">
            <font size="7" color="white"face="Bradley hand ITC">Welcome to HangoverHelpers</font></br></br>
            <font size="5" color="white" face="Bradley hand ITC">&ensp;&ensp;A fast, friendly and intriguing delivery service</font></p>


        <div id="login" class="login">
            <div>
                <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
                </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">
                &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Login</font>
                </br></br>
                &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" title="Email"id="Email "name="Email" placeholder="Email" style="text-align: center;width:200px; height:30px;"></br></br>
                &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="password" title="Password"id="Password" name="Password" placeholder="Password" style="text-align: center; width:200px; height:30px;"></br></br>
                &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="submit" id="CreateRecord"
                                                                                               style="color:white;border: none;background-image:url('http://i.imgur.com/WvJjCS2.jpg'); width:100px; height:36px;" 
                                                                                               value="Login" title="Login"></br></br>
                <a href="register.jsp" style="text-decoration:none;"title="Register Here" ><font size="3"color="white">
                    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Not Registered?<font></a></div>
        </div>
</body>
</html>