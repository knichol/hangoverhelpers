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
            <p style="margin-top:-54px; margin-left:-50px;" class="aligncenter">
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
            <div id="goods" style="display:block;margin-top: 10px;">1 2 3 4 
            <div ></div>
            </div> 
            <div id="goods1" style="display:none;margin-top: 10px;">
                <div class="food food1">
                    <p class="imgText1"><font color="#7092BE">Chicken Burger</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food2">
                    <p class="imgText1"><font color="#7092BE">HamBurger</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="food food3">
                    <p class="imgText1"><font color="#7092BE">Sausage Rolls</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food4">
                    <p class="imgText1"><font color="#7092BE">Snack Box</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="food food5">
                    <p class="imgText1"><font color="#7092BE">Chicken Roll</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food6">
                    <p class="imgText1"><font color="#7092BE">Breakfast Roll</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="food food7">
                    <p class="imgText1"><font color="#7092BE">Taco Fries</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food8">
                    <p class="imgText1"><font color="#7092BE">Chips</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="food food9">
                    <p class="imgText1"><font color="#7092BE">Hawaiian Pizza</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food10">
                    <p class="imgText1"><font color="#7092BE">Chicken Pizza</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="food food11">
                    <p class="imgText1"><font color="#7092BE">Pepporoni Pizza</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

                <div class="food food12">
                    <p class="imgText1"><font color="#7092BE">Vegatarian Pizza</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
            </div> 
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
            <div id="goods3" style="display:none;margin-top: 20px; text-align: center;">           
                <div class="drink drink1">
                    <p class="imgText1"><font color="#7092BE">Powerade</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink2">
                    <p class="imgText1"><font color="#7092BE">Water</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="drink drink3">
                    <p class="imgText1"><font color="#7092BE">Diet Coke</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink4">
                    <p class="imgText1"><font color="#7092BE">Coca Cola</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="drink drink5">
                    <p class="imgText1"><font color="#7092BE">Lucozade</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink6">
                    <p class="imgText1"><font color="#7092BE">Lucozade Sport</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="drink drink7">
                    <p class="imgText1"><font color="#7092BE">7up</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink8">
                    <p class="imgText1"><font color="#7092BE">Fanta Orange</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="drink drink9">
                    <p class="imgText1"><font color="#7092BE">Green Tea</font></p>
                </div>  
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

                <div class="drink drink10">
                    <p class="imgText1"><font color="#7092BE">Tea</font></p>
                </div> 
                <select style="vertical-align:5px;">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
            </div> 

            <div id="goods4" style="display:none; margin-top: 20px;">
                <a href="#cleaner1">
                    <div class="clean">
                        <p class="imgText"><font color="#7092BE">Click for Details</font></p>
                    </div></a>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <a href="#cleaner2">
                    <div class="clean">
                        <p class="imgText"><font color="#7092BE">Click for Details</font></p>
                    </div></a>
                </br>
                <font color="white">Package One</font>
                <td>&nbsp;</td><td>&nbsp;</td>
                <td>&nbsp;</td><td>&nbsp;</td>
                <td>&nbsp;</td><td>&nbsp;</td>
                <font color="white">Package Two</font>
                </br></br>

                <a href="#cleaner3">
                    <div class="clean">
                        <p class="imgText"><font color="#7092BE">Click for Details</font></p>
                    </div></a>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <a href="#cleaner4">
                    <div class="clean">
                        <p class="imgText"><font color="#7092BE">Click for Details</font></p>
                    </div></a>
                </br>
                <font color="white">Package Three</font>
                <td>&nbsp;</td><td>&nbsp;</td>
                <td>&nbsp;</td><td>&nbsp;</td>
                <td>&nbsp;</td>
                <font color="white">Package Four</font>
                </br></br>

                <a href="#cleaner5" style="margin-top: 10px;text-decoration: none;text-align: center;">
                    <div class="clean">
                        <p class="imgText"><font color="#7092BE">Click for Details</font></p>
                    </div></br>
                </a><font color="white">Package Five</font>
                </br></br>              
            </div> 
        </div>
        <div id = "first"style="display:none;">some details111</div>
<div id = "second"style="display:none;">some details222</div>
</body>
</html>