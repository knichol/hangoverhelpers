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
                <% String address = (String) session.getAttribute("address1");
                    String email = (String) session.getAttribute("email1");
                    String phone = (String) session.getAttribute("phone1");
                    String user = (String) session.getAttribute("user");
                    String uname = (String) session.getAttribute("uname");
                    String name2 = "";
                    String name3 = "Logout";
                    String name1a = "";
                    if (session.getAttribute("uname") == null) {
                        name1a = "Register";
                        name2 = "Login";
                        name3 = "";
                        user = "";
                        uname="";
                    }
                %>    
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>
               
                <a  class="test"href="register.jsp" title="Register"><%=name1a%></font></a>
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
    <div id="cleaners">
        <div id="cleaner1" class="login">
            <div>
                <a href="#close" title="Close"class="close">X</a>
                </br></br><font size ="5">Package One</font></br></br>
                Cleaner comes in and cleans the rubbish in the house!</br></br>
            </div>
        </div>
        <div id="cleaner2" class="login">
            <div>
                <a href="#close" title="Close"class="close">X</a>
                </br></br><font size ="5">Package Two</font></br></br>
                Cleaner comes in and cleans the rubbish in the house and the floor! </br></br>
            </div>
        </div>
        <div id="cleaner3" class="login">
            <div>
                <a href="#close" title="Close"class="close">X</a>
                </br></br><font size ="5">Package Three</font></br></br>
                Cleaner comes in and cleans the rubbish in the house and the floor! 
                They will also dispose of the rubbish is a healthy manner!</br></br>
            </div>
        </div>
        <div id="cleaner4" class="login">
            <div>
                <a href="#close" title="Close"class="close">X</a>
                </br></br><font size ="5">Package Four</font></br></br>
                Cleaner comes in and cleans the rubbish in the house and the floor! 
                They will also dispose of the rubbish is a healthy manner and clean the windows and any outside damage!</br></br>
            </div>
        </div>        
        <div id="cleaner5" class="login">
            <div>
                <a href="#close" title="Close"class="close">X</a>
                </br></br><font size ="5">Package Four</font></br></br>
                The Ultimate Package</br>
                The cleaners will clean the full house</br></br>
            </div>
        </div>
    </div>
        <div id="package1" class="login">
            <div>
                <a href="#close" title="Close"class="close">X</a>
                </br></br><font size ="5" ><a style="text-align: center;">Package One</a></font></br></br>
                <a class="food food1"></a></br><a style="margin-left: -400px;">Chicken burger</a></br>
                <a class="food food2"></a></br><a style="margin-left: -400px;">HamBurger</br></a>
                <a class="food food3"></a></br><a style="margin-left: -400px;">Sausage Roll</a></br>
                <a class="food food4"></a></br><a style="margin-left: -400px;">Snack Box</a></br>          
            </div>
        </div>
    <div class="goods">
        <a>
            <a href="#Packages" name="Packages" title="Packages"onclick="show();
                    hide2();"class="test test1">Food Packages</tr></a>
            <a href="#Cleaners" name="Cleaners" title="Cleaners"onclick="show();
                    hide1();"class="test test1">Cleaners</a>
        </a>
    </div>
    <div class="box" >
        <div id="goods1"style="display:block;margin-top: 20px;text-align: center;">           
            <a href="#package1">
            <div class="drink drink1">
                <p class="imgText1">Powerade</p>             
            </div>  </a>
            <input class="btn btn2" type="submit" title="Add To Cart" id="product" ="1" onclick="window.location='AddToCart';">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <div class="drink drink2">
                <p class="imgText1">Water</p>
            </div> 
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            </br></br></br>
            
            <div class="drink drink3">
                <p class="imgText1">Diet Coke</p>
            </div>  
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <div class="drink drink4">
                <p class="imgText1">Coca Cola</p>
            </div> 
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            </br></br></br>
            
            <div class="drink drink5">
                <p class="imgText1">Lucozade</p>
            </div>  
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <div class="drink drink6">
                <p class="imgText1">Lucozade Sport</p>
            </div> 
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            </br></br></br>             
            
            <div class="drink drink7">
                <p class="imgText1">7up</p>
            </div>  
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <div class="drink drink8">
                <p class="imgText1">Fanta Orange</p>
            </div> 
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            </br></br></br>
            
            <div class="drink drink9">
                <p class="imgText1">Green Tea</p>
            </div>  
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <div class="drink drink10">
                <p class="imgText1">Tea</p>
            </div> 
            <input class="btn btn2"type="submit" title="Add To Cart"value="">
        </div>         
        <div id="goods2"style="display:none;margin-top: 20px;text-align: center;">
            <a href="#cleaner1">
                <div class="clean">
                    <p class="imgText2">Package One</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit"title="Add To Cart"value="">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <a href="#cleaner2">
                <div class="clean">
                    <p class="imgText2">Package Two</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">
            </br></br></br>
            <a href="#cleaner3">
                <div class="clean">
                    <p class="imgText2">Package Three</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <a href="#cleaner4">
                <div class="clean">
                    <p class="imgText2">Package Four</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">
            </br></br></br>
            <a href="#cleaner5">
                <div class="clean">
                    <p class="imgText2">Package Five</p>
                    <p class="imgText">Click for Detail</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">
            </br></br></br>             
        </div> 
    </div>
</body>
</html>
