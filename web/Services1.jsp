<%@page import="java.sql.*"%>
<%@page import="enterprise.web_jpa_war.servlet.ShoppingCart"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title>HangoverHelpers - Services</title><link  rel="shortcut icon" href="favicon.ico"/>
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
        <%
            Connection conn = null;
            Statement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");

            stmt = conn.createStatement();
            String sqlStr = "SELECT * FROM Packages";
            ResultSet rset = stmt.executeQuery(sqlStr);
            if (rset.next()) {
                // ResultSet's cursor now pointing at first row
                do {
                    out.println("<form method='get' action='cart'>");
                    out.println("<input type='hidden' name='todo' value='add' />");
                    // Print each row with a checkbox identified by book's id
                    String id = rset.getString("Package_ID");
                    out.println("<tr>");
                    out.println("<td><input type='checkbox' name='id' value='" + id + "' /></td>");
                    out.println("<td>" + rset.getString("Name") + "</td>");
                    out.println("<td>$" + rset.getString("Price") + "</td>");
                    out.println("<td><input type='text' size='3' value='1' name='Stock" + id + "' /></td>");
                    out.println("</br>");
                    out.println("</table><br />");
                    // Submit and reset buttons

                } while (rset.next());
                out.println("<input type='submit' value='Add to My Shopping Cart' />");
                out.println("<input type='reset' value='CLEAR' /></form>");
            }
            // Show "View Shopping Cart" if the cart is not empty
            session = request.getSession(false); // check if session exists
            if (session != null) {
                ShoppingCart cart;
                synchronized (session) {
                    // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                    cart = (ShoppingCart) session.getAttribute("cart");
                    if (cart != null && !cart.isEmpty()) {
                        // out.println("<P><a href='cart?todo=view'>View Shopping Cart</a></p>");
                    }
                }
            }

           // out.println("</body></html>");
                    String uname = (String) session.getAttribute("uname");
                    String name2 = "";
                    String name3 = "Logout";
                    String name1a = "";
                    if (session.getAttribute("uname") == null) {
                        name1a = "Register";
                        name2 = "Login";
                        name3 = "";
                        //user = "";
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
    <form class="box" method="get" action="cart"></br><font style="color:white;font-size:200%; font-family:Bradley hand ITC;">Services</font>
        <div id="goods1"style="display:block;margin-top: 40px;text-align: center;">  

            <a><div class="drink drink1"><p class="imgText1">Package 1</p></div></a>
            <input class="btn3" name="id" type="checkbox" name="1" />
            <input type="text" size="3" value="1" name="Stock" <%=id%> />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink2"><p class="imgText1">Package 2</p></div></a>
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td> 
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink3"><p class="imgText1">Package 3</p></div></a>
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink4"><p class="imgText1">Package 4</p></div></a>
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            </br></br></br>

            <a><div class="drink drink5"><p class="imgText1">Package 5</p></div></a> 
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>  
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink6"><p class="imgText1">Package 6</p></div></a>
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink7"><p class="imgText1">Package 7</p></div></a>
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a><div class="drink drink8"><p class="imgText1">Package 8</p></div></a>
            <input class="btn3" name='id' type="checkbox" name="<%=id%>" />

            </br></br></br>

            <a href="#cleaner1">
                <div class="clean clean1">
                    <p class="imgText2">Package One</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn2" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a href="#cleaner2">
                <div class="clean clean2">
                    <p class="imgText2">Package Two</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn2" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a href="#cleaner3">
                <div class="clean clean3">
                    <p class="imgText2">Package Three</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn2" name='id' type="checkbox" name="<%=id%>" />

            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>

            <a href="#cleaner4">
                <div class="clean clean4">
                    <p class="imgText2">Package Four</p>
                    <p class="imgText">Click for Details</p>
                </div></a>
            <input class="btn2" name='id' type="checkbox" name="<%=id%>" />     
        </div> 
        <input class="btn"type="submit" value='Add to Cart' />
        <input class="btn"type="reset" value="Reset" />
    </form>
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
