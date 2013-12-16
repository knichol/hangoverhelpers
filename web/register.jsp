<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <div id="background">
        <img src="http://i.imgur.com/y1AGOMf.jpg" class="stretch" alt=""/>
                  </div>

    </head>	
           <style>
         
#background {
    width: 100%; 
    height: 14%; 
    position: fixed; 
    left: 0px; 
    top: 0px; 
    z-index: -1; /* Ensure div tag stays behind content; -999 might work, too. */
}

.stretch {
    width:100%;
    height:100%;
}
label
{
width: 4em;
float: left;
text-align: right;
margin-right: 0.5em;
display: block
}
    </style> 
	<body background ="http://i.imgur.com/WvJjCS2.jpg">
            <div style="width:400px; text-align:center; margin-right:auto; margin-left:auto; margin-top:120px; border:0px solid #000;"><a>
<center>
<font size="6" color="white" face="Bradley hand ITC">Register</font>
</center>
</div>
        	<form style="width:400px; text-align:center; margin-right:auto; margin-left:auto; margin-top:30px; border:0px solid #000;"id ="register" action="Register" method="post">
                    &nbsp;<input type="text" id="Name" name="Name" placeholder="Fullname" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="password" id="Password" name="Password" placeholder="Password" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="text" id="Email "name="Email" placeholder="Email" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="text" id="Address" name="Address" placeholder="Address" style="text-align: center; width:200px; height:30px;"></br></br>
			&nbsp;<input type="text" id="Phone" name="Phone" placeholder="Phone Number" style="text-align: center; width:200px; height:30px;"></br></br>
			&ensp;&ensp;<input type="submit" id="CreateRecord"
				style="color:white;border: none;background-image:url('http://i.imgur.com/WvJjCS2.jpg'); width:100px; height:36px;" 
			value="Register">		-
			</form>	
	</body>
</html>