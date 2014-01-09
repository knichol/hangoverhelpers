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
            <p style="margin-top:-54px;" class="aligncenter">
            <table border="0">
                <tr>
                    <td><a title="Home"href="index.jsp"class="test">
                            <font color="white" size ="5" face="Bradley hand ITC">Home</font></a></td>
                    <td>&nbsp;</td>
                    <td><a title="Services" href="Services.jsp"class="test">
                            <font color="white" size ="5" face="Bradley hand ITC">Services</font></a></td>
                    <td>&nbsp;</td>
                    <td><a href="Help.jsp"title="Help"class="test">
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
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body background ="http://i.imgur.com/D5HT75P.jpg">
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
<div id="cleaners">
    <div id="cleaner1" class="cleaner">
        <div>
            <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
            </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">Package One</font>
            </br></br>
            Cleaner comes in and cleans the rubbish in the house!</br></br>
            <input class="btn"type="submit" value="Add To Cart" title="Add To Cart"></br></br>
        </div>
    </div>

    <div id="cleaner2" class="cleaner">
        <div>
            <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
            </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">Package Two</font>
            </br></br>
            Cleaner comes in and cleans the rubbish in the house and the floor! </br></br>
            <input class="btn"type="submit" value="Add To Cart" title="Add To Cart"></br></br>
        </div>
    </div>
        <div id="cleaner3" class="cleaner">
        <div>
            <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
            </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">Package Three</font>
            </br></br>
            Cleaner comes in and cleans the rubbish in the house and the floor! 
            They will also dispose of the rubbish is a healthy manner!</br></br>
            <input class="btn"type="submit" value="Add To Cart" title="Add To Cart"></br></br>
        </div>
    </div>
        <div id="cleaner4" class="cleaner">
        <div>
            <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
            </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">Package Four</font>
            </br></br>
            Cleaner comes in and cleans the rubbish in the house and the floor! 
            They will also dispose of the rubbish is a healthy manner and clean the windows and any outside damage!</br></br>
            <input class="btn"type="submit" value="Add To Cart" title="Add To Cart"></br></br>
        </div>
    </div>        
    <div id="cleaner5" class="cleaner">
        <div>
            <a href="#close" title="Close"style="text-decoration:none;" class="close"><font color="white">X</font></a>
            </br></br><font style="text-align:center;"size ="5"color="white"face="Bradley hand ITC">Package Four</font>
            </br></br>
            The Ultimate Package</br>
            The cleaners will clean the full house</br></br>
            <input class="btn"type="submit" value="Add To Cart" title="Add To Cart"></br></br>
        </div>
    </div>
</div>
    <div class="goods">   
        <p style="margin-top:3px;">
            <a  href="#1" name="1" onclick="show();
                    hide1();
                    hide2();
                    hide3();
                    hide4();"class="test"title="Register">
                <font color="white" size ="5" face="Bradley hand ITC">All</font></a>

            <a href="#1" name="1" onclick="show();
                    hide();
                    hide2();
                    hide3();
                    hide4();"class="test"title="Login">
                <font color="white" size ="5" face="Bradley hand ITC">Hot Food</font></a>

            <a href="#1" name="1" onclick="show();
                    hide();
                    hide1();
                    hide3();
                    hide4();"class="test"title="Login">
                <font color="white" size ="5" face="Bradley hand ITC">Sweets</font></a>

            <a href="#1" name="1" onclick="show();
                    hide();
                    hide1();
                    hide2();
                    hide4();"class="test"href="#login" title="Login">
                <font color="white" size ="5" face="Bradley hand ITC">Drinks</font></a>
            <a href="#1" name="1" onclick="show();
                    hide();
                    hide1();
                    hide2();
                    hide3();"class="test"href="#login" title="Login">
                <font color="white" size ="5" face="Bradley hand ITC">Cleaners</font></a>
        </p>
        <div class="box" >
            <div id="goods" style="display:block;margin-top: 10px;">1 2 3 4 </div> 
            <div id="goods1" style="display:none;margin-top: 10px;">
                <img style="width:60px;height:60px;"src="http://i.imgur.com/sRsmHQ4.jpg"/>
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select></div> 
            <div id="goods2" style="display:none;margin-top: 10px;">
                <img style="width:60px;height:60px;"src="http://i.imgur.com/hM3UQcX.jpg"/>
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select>
            </div> 
            <div id="goods3" style="display:none;margin-top: 10px;">
                <img style="width:60px;height:60px;"src="http://i.imgur.com/dBBbBo6.jpg"/>
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select>
            </div> 

            <div id="goods4" style="display:none; ">
                <a href="#cleaner1" style="margin-top: 10px;text-decoration: none;text-align: center;">
                    <div class="imgBox1">
                        <p class="imgText"><font color="#4C0B5F">Click for Details</font></p>
                    </div></br>
                </a><font color="white">Package One</font>
                </br></br>
                <a href="#cleaner2" style="margin-top: 10px;text-decoration: none;text-align: center;">
                    <div class="imgBox2">
                        <p class="imgText"><font color="#4C0B5F">Click for Details</font></p>
                    </div></br>
                </a><font color="white">Package Two</font>
                </br></br>
                <a href="#cleaner3" style="margin-top: 10px;text-decoration: none;">
                    <div class="imgBox3">
                        <p class="imgText"><font color="#4C0B5F">Click for Details</font></p>
                    </div></br>
                </a><font color="white">Package Three</font>
                </br></br>
                <a href="#cleaner4" style="margin-top: 10px;text-decoration: none; text-align: center;">
                    <div class="imgBox4">
                        <p class="imgText"><font color="#4C0B5F">Click for Details</font></p>
                    </div></br>
                </a><font color="white">Package Four</font>
                </br></br>
                <a href="#cleaner5" style="margin-top: 10px;text-decoration: none;text-align: center;">
                    <div class="imgBox5">
                        <p class="imgText"><font color="#4C0B5F">Click for Details</font></p>
                    </div></br>
                </a><font color="white">Package Five</font>
                </br></br>              
            </div> 
        </div>
</body>
</html>