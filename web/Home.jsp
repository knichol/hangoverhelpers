<html>  
    <head>  
    <div id="background">
        <title>HangoverHelpers</title>
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="Home.jsp" class="alignleft">HangoverHelpers</a>
            <p style="margin-top:-54px; margin-left:-50px;" class="aligncenter">
            <table border="0">
                <tr>
                    <td><a title="Home"href="#Home"class="test"onclick="show1();
                            hide6();
                            hide7();
                            hide8();
                            hide9();
                            hide10();">Home</a></td>
                    <td>&nbsp;</td>
                    <td><a title="Services" href="#Services"class="test"onclick="show1();
                            hide5();
                            hide7();
                            hide8();
                            hide9();
                            hide10();">Services</a></td>
                    <td>&nbsp;</td>
                    <td><a title="About Us"href="#AboutUs"class="test"onclick="show1();
                            hide6();
                            hide5();
                            hide8();
                            hide9();
                            hide10();">About</a></td>
                    <td>&nbsp;</td>
                    <td><a title="Contact Us" href="#ContactUs"class="test"onclick="show1();
                            hide6();
                            hide7();
                            hide5();
                            hide9();
                            hide10();">Contact</a></td>
                </tr></table></p>
            <p class="alignright">
                <a  class="test"href="#Register" title="Register"onclick="show1();
                            hide();
                            hide6();
                            hide7();
                            hide8();
                            hide5();
                            hide10();">Register</font></a>
            <td>&nbsp;</td>
            <a class="test"href="#Login" title="Login"onclick="show1();
                            hide();
                            hide6();
                            hide7();
                            hide8();
                            hide9();
                            hide5();">Login</a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>
    <div id="home1" style="display:block;margin-top: 20px;text-align: center;">
        <p class="homepage">
            <font size="7">Welcome to HangoverHelpers</font></br></br>
            <font size="5">&ensp;&ensp;A fast, friendly and intriguing delivery service</font>
        </p>
        <div id="login" class="login">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div>
        </div>
    </div>
    <div id="home2" style="display:none;margin-top: 20px;text-align: center;">
        <div id="login" class="login">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div>
        </div>
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
        <div class="goods">
            <a>
                <a href="#HotFood" name="Hot Food" title="Hot Food"onclick="show();
                            hide();
                            hide2();
                            hide3();
                            hide4();"class="test test1">Hot Food</a>

                <a href="#Confectionery" name="Confectionery"title="Confectionery" onclick="show();
                            hide();
                            hide1();
                            hide3();
                            hide4();"class="test test1">Confectionery</a>

                <a href="#Drinks" name="Drinks" title="Drinks"onclick="show();
                            hide();
                            hide1();
                            hide2();
                            hide4();"class="test test1">Drinks</a>
                <a  href="#HealthyFood" name="1" title="Healthy Food" onclick="show();
                            hide1();
                            hide2();
                            hide3();
                            hide4();"class="test test1">Healthy Food</a>
                <a href="#Cleaners" name="Cleaners" title="Cleaners"onclick="show();
                            hide();
                            hide1();
                            hide2();
                            hide3();"class="test test1">Cleaners</a>
            </a>
        </div>
        <div class="box" >
            <div id="goods1" style="display:block;margin-top: 20px;text-align: center;">
                <div title="Chicken Burger"class="food food1">
                    <p class="imgText1">Chicken Burger</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div title="Hamburger"class="food food2">
                    <p class="imgText1">Hamburger</p>
                </div> 
                <select >
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div title="Sausage Rolls"class="food food3">
                    <p class="imgText1">Sausage Rolls</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div title="Snack Box"class="food food4">
                    <p class="imgText1">Snack Box</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div title="Chicken Roll"class="food food5">
                    <p class="imgText1">Chicken Roll</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div title="Breakfast Roll"class="food food6">
                    <p class="imgText1">Breakfast Roll</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div title="Taco Fries" class="food food7">
                    <p class="imgText1">Taco Fries</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div title="Chips"class="food food8">
                    <p class="imgText1">Chips</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food9">
                    <p class="imgText1">Hawaiian Pizza</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>           
                </br></br></br>
                <div class="food food10">
                    <p class="imgText1">Chicken Pizza</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>                
                <div class="food food11">
                    <p class="imgText1">Pepporoni Pizza</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="food food12">
                    <p class="imgText1">Vegatarian Pizza</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
            </div> 

            <div id="goods2" style="display:none;margin-top: 20px;text-align: center;">
                <div class="sweet sweet1">
                    <p class="imgText1">Buffalo</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet2">
                    <p class="imgText1">Cheese & Onion</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet3">
                    <p class="imgText1">Salt & Vinegar</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="sweet sweet4">
                    <p class="imgText1">Popcorn</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet5">
                    <p class="imgText1">Onion Rings</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet6">
                    <p class="imgText1">Thai Rings</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="sweet sweet7">
                    <p class="imgText1">Salted</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet8">
                    <p class="imgText1">SC & Onion</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>              
                <div class="sweet sweet9">
                    <p class="imgText1">Salt & Vinegar</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="sweet sweet10">
                    <p class="imgText1">Prawn Cocktail</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>   
                <div class="sweet sweet11">
                    <p class="imgText1">Taytos</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet12">
                    <p class="imgText1">Mighty Munch</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="sweet sweet13">
                    <p class="imgText1">Galaxy Caramel</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet14">
                    <p class="imgText1">Bournville</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet15">
                    <p class="imgText1">Golden Crisp</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="sweet sweet16">
                    <p class="imgText1">MilkyWay</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet17">
                    <p class="imgText1">Cola Calippo</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet18">
                    <p class="imgText1">Orange Calippo</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="sweet sweet19">
                    <p class="imgText1">Twister</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet20">
                    <p class="imgText1">Iceburger</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="sweet sweet21">
                    <p class="imgText1">Red Slushie</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="sweet sweet22">
                    <p class="imgText1">Blue Slushie</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div> 
            <div id="goods3"style="display:none;margin-top: 20px;text-align: center;">           
                <div class="drink drink1">
                    <p class="imgText1">Powerade</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink2">
                    <p class="imgText1">Water</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink3">
                    <p class="imgText1">Diet Coke</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="drink drink4">
                    <p class="imgText1">Coca Cola</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink5">
                    <p class="imgText1">Lucozade</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink6">
                    <p class="imgText1">Lucozade Sport</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="drink drink7">
                    <p class="imgText1">7up</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="drink drink8">
                    <p class="imgText1">Fanta Orange</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>               
                <div class="drink drink9">
                    <p class="imgText1">Green Tea</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="drink drink10">
                    <p class="imgText1">Tea</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>         
            <div id="goods" style="display:none;margin-top: 20px;text-align: center;">
                <div class="hfood hfood1">
                    <p class="imgText1">Orange</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood2">
                    <p class="imgText1">Apple</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood3">
                    <p class="imgText1">Pineapple</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="hfood hfood4">
                    <p class="imgText1">Watermelon</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood5">
                    <p class="imgText1">Grapes</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood6">
                    <p class="imgText1">Bread Sticks</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="hfood hfood7">
                    <p class="imgText1">Rice Cakes</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood8">
                    <p class="imgText1">Bombay Mix</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>              
                <div class="hfood hfood9">
                    <p class="imgText1">Sesame Sticks</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>
                <div class="hfood hfood10">
                    <p class="imgText1">Cream Crackers</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>   
                <div class="hfood hfood11">
                    <p class="imgText1">Ryvita Original</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood12">
                    <p class="imgText1">Ryvita Fruit</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </br></br></br>                
                <div class="hfood hfood13">
                    <p class="imgText1">Olives</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood14">
                    <p class="imgText1">Feta Cheese</p>
                </div> 
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <div class="hfood hfood15">
                    <p class="imgText1">Bread Sticks</p>
                </div>  
                <select>
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div> 
            <div id="goods4"style="display:none;margin-top: 20px;text-align: center;">
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
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <a href="#cleaner3">
                    <div class="clean">
                        <p class="imgText2">Package Three</p>
                        <p class="imgText">Click for Details</p>
                    </div></a>
                <input class="btn btn1"type="submit" title="Add To Cart"value="">
                </br></br></br>
                <a href="#cleaner4">
                    <div class="clean">
                        <p class="imgText2">Package Four</p>
                        <p class="imgText">Click for Details</p>
                    </div></a>
                <input class="btn btn1"type="submit" title="Add To Cart"value="">
                <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                <a href="#cleaner5">
                    <div class="clean">
                        <p class="imgText2">Package Five</p>
                        <p class="imgText">Click for Detail</p>
                    </div></a>
                <input class="btn btn1"type="submit" title="Add To Cart"value="">
                </br></br></br>             
            </div> 
        </div>
    </div>
    <div id="home3" style="display:none;margin-top: 20px;text-align: center;">
        <div class="help">
            <form></br>
                About Us
                </br>
            </form>
        </div>
        <div id="login" class="login">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div>
        </div>
    </div>
    <div id="home4" style="display:none;margin-top: 20px;text-align: center;" onload="init();">
        <div class="help">
            <form method="post" action="mailto:ciansheehy92@gmail.com"></br>
                Contact Us</br>
                <input type="text" title="Name"  id="Name"  name="Name"  placeholder="Fullname"></br></br>
                <input type="text" title="Email" id="Email" name="Email" placeholder="Email"></br></br>
                <textarea id="text" maxlength="400"placeholder="Dear Sir/Madam...(400 Characters Max)"></textarea>
                <input class="btn"value="Send Email"type="submit"style="position: absolute;left: 0;right: 120px;bottom:10px;"/>          
                <input type="reset" class="btn" value="Reset" style="position: absolute;left: 120px;right: 0;bottom:10px;">
            </form>
        </div>
        <div id="login" class="login">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div>
        </div>
    </div>
    <div id="home5" style="display:none;margin-top: 20px;text-align: center;">
        <div class="help">
            </br>Login</br></br>
            <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
            <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
            <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
            <a href="register.jsp" title="Register"style="text-decoration:none;" >
                <font size="3"color="white" style="text-align:center;">Not Registered?</font></a>
        </div>
        <div id="login" class="login">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div>
        </div>
    </div>
    <div id="home6" style="display:none;margin-top: 20px;text-align: center;">
        <div class="register">
            <form  id ="register" action="Register" method="post" style="width:400px; text-align:center; "id ="register" action="Register" method="post"></br>
                Register</br>
                <input type="text" id="Name" title="Name" name="Name" placeholder="Fullname"></br></br>
                <input type="password" title="Password" id="Password" name="Password" placeholder="Password"></br></br>
                <input type="text" title="Email" id="Email "name="Email" placeholder="Email"></br></br>
                <input type="text" title="Address" id="Address" name="Address" placeholder="Address"></br></br>
                <input type="text" title="Phone Number" id="Phone" name="Phone" placeholder="Phone Number"></br></br>
                <input class="btn" type="submit" id="CreateRecord" value="Register" title="Register">
            </form>	
        </div>
        <div id="login" class="login">
            <div>
                <a href="#close" title="Close" class="close">X</a>
                </br></br><font size ="5">Login</font>
                </br></br>
                <input type="text" title="Email"id="Email "name="Email" placeholder="Email"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" id="CreateRecord"value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></div>
        </div>
    </div>
</body>
</html>
