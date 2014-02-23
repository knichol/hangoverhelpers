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
                        uname = "";
                    }
                %>    
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>

                <a  class="test"href="register.jsp" title="Register"><%=name1a%></font></a>
            <td>&nbsp;</td>
            <a class="test" title="Logout"href="Logout"><%=name3%></a>
            <a class="test"href="#login" title="Login"><%=name2%></a></p>
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
    </div>
    <div class="box" >
        <div id="goods1"style="display:block;margin-top: 80px;text-align: center;">           
            <a><div class="drink drink1"><p class="imgText1">Package 1</p></div></a>
            <input class="btn btn2" type="submit"value="" title="Add To Cart" 
                   id="product" onclick="window.location = 'AddToCart';">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink2"><p class="imgText1">Package 2</p></div></a>
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td> 
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink3"><p class="imgText1">Package 3</p></div></a>
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink4"><p class="imgText1">Package 4</p></div></a>
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            </br></br></br>

            <a><div class="drink drink5"><p class="imgText1">Package 5</p></div></a> 
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink6"><p class="imgText1">Package 6</p></div></a>
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink7"><p class="imgText1">Package 7</p></div></a>
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink8"><p class="imgText1">Package 8</p></div></a>
            <input class="btn btn2"type="submit" title="Add To Cart"value="">

            </br></br></br>

            <a href="#cleaner1">
                <div class="clean clean1">
                    <p class="imgText2">Package One</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit"title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a href="#cleaner2">
                <div class="clean clean2">
                    <p class="imgText2">Package Two</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a href="#cleaner3">
                <div class="clean clean3">
                    <p class="imgText2">Package Three</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a href="#cleaner4">
                <div class="clean clean4">
                    <p class="imgText2">Package Four</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn btn1"type="submit" title="Add To Cart"value="">           
        </div> 
    </div>
    <div id="login" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form id ="loginform" action="Validate"method="post">
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Username"id="uName"name="uName" placeholder="Username"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div></form>
</div>
</body>
</html>
