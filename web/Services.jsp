<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Services</title><link  rel="shortcut icon" href="favicon.ico"/>
    <div id="background">
        <div title="HangoverHelpers" class="sloth"></div>
        <div style="margin-left: auto;margin-right:auto;">
            <a title="HangoverHelpers" href="index.jsp" class="alignleft">HangoverHelpers</a>
            <table align="center">
                <th><a title="Home"href="index.jsp"class="test">Home</a></th>
                <th>&nbsp;</th>
                <th><a title="Services" href="Services.jsp"class="test">Services</a></th>
                <th>&nbsp;</th>
                <th><a href="About.jsp"title="About Us"class="test">About</a></td>
                <th>&nbsp;</th>
                <th><a title="Contact Us" href="Contact.jsp"class="test">Contact</a></th>
            </table>
            <p class="alignright">
                <%  String uname = (String) session.getAttribute("uname");
                    String name2 = "";
                    String name3 = "Logout";
                    String name1a = "";
                    if (session.getAttribute("uname") == null) {
                        name1a = "Register";
                        name2 = "Login";
                        name3 = "";
                        uname = "";
                    }
                %> 
                <a  class="test"href="profile.jsp" title="Cart"><%=uname%></font></a>

                <a  class="test"href="register.jsp" title="Register"><%=name1a%></font></a>
            <td>&nbsp;</td>
            <a class="test" href="Logout"><%=name3%></a>
            <a class="test"href="#login" title="Login"><%=name2%></a></p>
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type='text/css'></style>
    <script src="script.js"></script> 
</head>
<body>
    <div class="box">
        </br>
        <font style="color:white;font-family: Bradley hand ITC;font-size:200%;"> Packages</font></br>
            <%
                Connection conn = null;
                Statement stmt = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");

                stmt = conn.createStatement();
                String sqlStr = "SELECT * FROM Packages where Stock > '0'";
                ResultSet rset = stmt.executeQuery(sqlStr);

                if (rset.next()) {
                    // ResultSet's cursor now pointing at first row 
                    do {
                        out.println("<td><form style='color:white;font-family: Bradley hand ITC;'method='get' action='cart'>");
                        out.println("<input type='hidden' name='todo' value='add' />");
                        // Print each row with a checkbox identified by book's id
                        String id = rset.getString("Package_ID");
                        out.println("<a href='#" + rset.getString(2) + "'><div  style='margin-top:20px;'class='drink " + rset.getString(2) + "'><p class='imgText1'>" + rset.getString(2) + "</br>Click </br>for Details</p></div></a>");%>
        <input class="btn3"type="checkbox" name="id" value="<%=id%>"/>
        <% out.println(rset.getString("Name"));%>
        <% out.println("&#8364;" + rset.getString("Price"));%>
        <% out.println("<input style='width:30px;height:30ps;'type='text' value='1'name='Stock" + id + "'/>");
                    out.println("<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                } while (rset.next());
                String cart1 = "submit";
                String cart2 = "submit";
                String cart3 = "";
                if (session.getAttribute("uname") == null) {
                    cart1 = "hidden";
                    cart2 = "hidden";
                    cart3 = "Login in to add Packages to Cart";
                }
                out.println("</br></br><input class='btn'type='" + cart1 + "' value='Add to Cart' />");
                out.println("<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>");
                out.println("<input class='btn'type='" + cart2 + "' value='Clear' /><a href='#login'style='color:white;text-decoration:none;font-size:200%;'>" + cart3 + "</a>");
                out.println("</form></td>");
            }
            // Show "View Shopping Cart" if the cart is not empty
            session = request.getSession(false); // check if session exists
            if (session != null) {
                ShoppingCart cart;
                synchronized (session) {
                    // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                    cart = (ShoppingCart) session.getAttribute("cart");
                    if (cart != null && !cart.isEmpty()) {
                    }
                }
            }
        %>
    </div>
    <div id="Food1" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 1</font>
                </br></br>
                <ol>
                    <li>Water</li>
                    <li>Hunky Dory Cheese & Onion</li>
                    <li>Twister Ice Cream</li>
                    <li>Apple</li>
                    <li>Curry Chips</li>
                    <li>Golden Crisp</li>
                    <li>Mighty Munch</li>
                    <li>Snack Box</li>
                </ol>
            </form>

        </div></div>
    <div id="Food2" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 2</font>
                </br></br>
                <ol>
                    <li>Pineapple</li>
                    <li>Diet Coke</li>
                    <li>Hunky Dory Buffalo</li>
                    <li>Thai rings</li>
                    <li>Hamburger</li>
                    <li>Coke Calippo</li>
                    <li>Mighty Munch</li>
                    <li>Chicken Burger</li>
                </ol>
            </form>

        </div></div>
    <div id="Food3" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 3</font>
                <ol>
                    <li>Ryvita Berry</li>
                    <li>Lucozade Sport</li>
                    <li>Milkyway</li>
                    <li>Ready Salted Pringles</li>
                    <li>Curry Cheese Chips</li>
                    <li>Orange Calippo</li>
                    <li>Mighty Munch</li>
                    <li>Sausage Roll</li>
                </ol>

            </form>

        </div></div>
    <div id="Food4" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 4</font>
                <li>Watermelon</li>
                <li>Lucozade</li>
                <li>Prawn Cocktail Pringles</li>
                <li>Cheese & Onion Taytos</li>
                <li>Chicken Fillet Roll</li>
                <li>Strawberry Slushie</li>
                <li>Mighty Munch</li>
                <li>Vegaterian Pizza</li>
                </ol>
            </form>

        </div></div>
    <div id="Food5" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 5</font>
                <ol>
                    <li>Rice Cakes</li>
                    <li>Powerade</li>
                    <li>Popcorn</li>
                    <li>Salt & Vinegar Pringles</li>
                    <li>Mushroom Pizza</li>
                    <li>Blueberry Slushie</li>
                    <li>Mighty Munch</li>
                    <li>Chicken Pizza</li>
                </ol>
            </form>

        </div></div>
    <div id="Food6" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 6</font>
                <ol>
                    <li>Bombay Mix</li>
                    <li>7up</li>
                    <li>Hunky Dory Salt & Vinegar</li>
                    <li>Onion rings</li>
                    <li>Margherita  Pizza</li>
                    <li>Iceburger</li>
                    <li>Mighty Munch</li>
                    <li>Breakfast Roll</li>
                </ol>
            </form>

        </div></div>
    <div id="Food7" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 7</font>
                <ol>
                    <li>Green Seedless Grapes</li>
                    <li>Fanta Orange</li>
                    <li>Sour Cream & Onion Pringles</li>
                    <li>Galaxy Caramel</li>
                    <li>Pepperoni Pizza</li>
                    <li>Magnum</li>
                    <li>Mighty Munch</li>
                    <li>Chips</li>
                </ol>
            </form>

        </div></div>
    <div id="Food8" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Food Package 8</font>
                <ol>
                    <li>Pear</li>
                    <li>Tea</li>
                    <li>Green Olive</li>
                    <li>Bournville</li>
                    <li>Baby Sausage Rolls</li>
                    <li>Loop De Loop</li>
                    <li>Mighty Munch</li>
                    <li>Kebab</li>
                </ol>
            </form>

        </div></div>
    <div id="Clean1" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Cleaning Package 1</font>
                <li>This package hires our helpers to do a quick clean of items that are left 
                    after the party!</li>
            </form>

        </div></div>
    <div id="Clean2" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Cleaning Package 2</font>
                <li>This package hires our helpers to do a quick clean of items that are left 
                    after the party & cleans the floor etc.</li>
            </form>

        </div></div>
    <div id="Clean3" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Cleaning Package 3</font>
                <li>This package hires our helpers to do a quick clean of the floor, windows,couches & gets 
                    rid of all rubbish</li>
            </form>

        </div></div>
    <div id="Clean4" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form>
                </br></br><font size ="5">Cleaning Package 4</font>
                <li>The Ultimate package lets hires Helpers to clean the entire house!</li>

            </form>

        </div></div>
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
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a><div>
                    <a href="#AdminLogin" title="AdminLogin"style="text-decoration:none;" >
                        <font size="3"color="white" style="text-align:center;">Admin Login</font></a></div></form>
        </div></div>
    <div id="AdminLogin" class="login">
        <div>
            <a href="#close" title="Close" class="close">X</a>
            <form id =""action="AdminValidate"method="post">
                </br></br><font size ="5">Admin Login</font></br></br>
                <input type="text" title="Admin"id="aName"name="aName" placeholder="Admin Name"></br></br>
                <input type="password" title="Password"id="Password" name="Password" placeholder="Password" ></br></br>
                <input class="btn"type="submit" value="Login" title="Login"></br></br>
                <a href="register.jsp" title="Register"style="text-decoration:none;" >
                    <font size="3"color="white" style="text-align:center;">Not Registered?</font></a></br>
             <a href="#login" title="Customer Login"style="text-decoration:none;" >
                        <font size="3"color="white" style="text-align:center;">Customer Login</font></a></form>
        </div>
    </div>
</body>
</html>
