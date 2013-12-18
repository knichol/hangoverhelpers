<html>
 <head>
     	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Varela+Round">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
       <div id="background">
        <img src="http://i.imgur.com/y1AGOMf.jpg" class="stretch"/>
        </div>
 
     <div style="margin-right:auto; margin-left:4px; margin-top:14px;">
         <img src="http://i.imgur.com/O23t68w.jpg"width="70" height="60" alt="Hangover Helpers"/>
</div>
 <div style=" margin-left: auto;margin-right:auto;">
    <p style="margin-top:-32px; margin-left:80px;"class="alignleft">
        <a title="HangoverHelpers"href="index.jsp" style="text-decoration: none;">
             <font size="6" color="white" face="Bradley hand ITC" >HangoverHelpers</a></font></p>
      <p style="margin-top:-54px;" class="aligncenter">
<table border="0">
  <tr>
    <td><a title="Home"href="index.jsp" style="text-decoration: none;">
        <font color="white" size ="5" face="Bradley hand ITC"
		onMouseOver = "this.style.backgroundColor = '#ADC0DA';"onMouseOut = "this.style.backgroundColor = '#7092BE';">Home</font></a></td>
    <td>&nbsp;</td>
    <td><a title="Services" style="text-decoration: none;">
        <font color="white" size ="5" face="Bradley hand ITC"
              onMouseOver = "this.style.backgroundColor = '#ADC0DA';"onMouseOut = "this.style.backgroundColor = '#7092BE';">Services</font></a></td>
    <td>&nbsp;</td>
    <td><a title="Help" style="text-decoration: none;">
        <font color="white" size ="5" face="Bradley hand ITC"
              onMouseOver = "this.style.backgroundColor = '#ADC0DA';"onMouseOut = "this.style.backgroundColor = '#7092BE';">Help</font></a></td>
    <td>&nbsp;</td>
    <td><a title="Contact" href="Contact.jsp"style="text-decoration: none;">
        <font color="white" size ="5" face="Bradley hand ITC"
              onMouseOver = "this.style.backgroundColor = '#ADC0DA';"onMouseOut = "this.style.backgroundColor = '#7092BE';">Contact</font></a></td>
  </tr>

</table></p>
  <p class="alignright" style="margin-top:-24px; ">
      <a title="Register" href="register.jsp"style="text-decoration: none;">
      <font color="white" size ="5" face="Bradley hand ITC"
		onMouseOver = "this.style.backgroundColor = '#ADC0DA';"onMouseOut = "this.style.backgroundColor = '#7092BE';">   
      Register</a></font>
      <td>&nbsp;</td>  
      <a href="#login" title="Login"style="text-decoration: none;">
      <font color="white" size ="5" face="Bradley hand ITC"
		onMouseOver = "this.style.backgroundColor = '#ADC0DA';"onMouseOut = "this.style.backgroundColor = '#7092BE';">      
      Login</font></a></p>
</div>


             </head>
           <style>
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
<!--  <script>
       function CheckInfos(form) {
  if (form.elements.Name.value === "") {
     alert("Enter Name");
  }
//  if (form.elements.Password.value === "") {
//     alert("Enter Password");
//  }
//  if (form.elements.Email.value === "") {
//     alert("Enter Email");
//  }
//  if (form.elements.Address.value === "") {
//     alert("Enter Address");
//  }
//if (form.elements.Phone.value === "") {
//     alert("Enter Phone");
//  }
  return false;
}
 </script>-->
<body background ="http://i.imgur.com/D5HT75P.jpg">
            <div style="width:400px; text-align:center; margin-right:auto; margin-left:auto; margin-top:80px; border:0px solid #000;"><a>
<center>
<font size="6" color="white" face="Bradley hand ITC">Register</font>
</center>
</div>
            <div id="register">
        	<form  onsubmit="return CheckInfos(this);"style="width:400px; text-align:center; margin-right:auto; margin-left:auto; margin-top:30px; border:0px solid #000;"id ="register" action="Register" method="post">
                    &nbsp;<input type="text" id="Name" title="Name"name="Name" placeholder="Fullname" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="password" title="Password"id="Password" name="Password" placeholder="Password" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="text" title="Email"id="Email "name="Email" placeholder="Email" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="text" title="Address"id="Address" name="Address" placeholder="Address" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="text" title="Phone Number"id="Phone" name="Phone" placeholder="Phone Number" style="text-align: center; width:200px; height:30px;"></br></br>
			&ensp;&ensp;<input type="submit" id="CreateRecord"
				style="color:white;border: none;background-image:url('http://i.imgur.com/WvJjCS2.jpg'); width:100px; height:36px;" 
			title="Register"value="Register">
			</form>	
            </div>
<div id="login" class="login">
	<div>
		<a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
		</br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">
                &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Login</font>
                </br></br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" title="Email"id="Email "name="Email" placeholder="Email" style="text-align: center;width:200px; height:30px;"></br></br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="password" title="Password"id="Password" name="Password" placeholder="Password" style="text-align: center; width:200px; height:30px;"></br></br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="submit" id="CreateRecord"
style="color:white;border: none;background-image:url('http://i.imgur.com/WvJjCS2.jpg'); width:100px; height:36px;" 
value="Login" title="Login"></br></br>
<a href="register.jsp" title="Register"style="text-decoration:none;" ><font size="3"color="white">
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Not Registered?<font></a></div>
</div>
</body>
</html>