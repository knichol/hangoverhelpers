<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*;"%>


<!--import java.util.logging.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;-->
<html>
    <head>
        <title>HangoverHelpers - Cart</title><link  rel="shortcut icon" href="favicon.ico"/>
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
                <% String address = (String) session.getAttribute("address");
                    String email = (String) session.getAttribute("email");
                    String phone = (String) session.getAttribute("phone");
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
                        address = "";
                        email = "";
                        phone = "";
                    }
                    Statement stmt = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1127", "mydb1127", "mydb112739");
                    // conn = pool.getConnection("mydb1127", "mydb112739");  // Get a connection from the pool
                    stmt = conn.createStatement();
                    String sqlStr = "SELECT * FROM Packages";
                    ResultSet rset = stmt.executeQuery(sqlStr);
                   
                    String Id=null;
                    String Name=null;
                    String Price=null;
                    String Stock = null;
                    
                    while (rset.next()) {
                        Id = rset.getString("Package_ID");
                        Name = rset.getString("Name");
                        Price = rset.getString("Price");
                        Stock = rset.getString("Stock");
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
<body >
    <div class="table">
        <div class="row">
            <div class="profile">
                <form method="post" action=""></br>
                    <a class="profilePic"></a></br>
                    <a class="username"><%=user%></a>
                    </br>
                    Email: <%=email%></br>
                    Address: <%=address%></br>
                    Phone: <%=phone%></br>
                </form>
            </div>
            <div class="cart">
                <form name="input"method="post" action="project.php"></br>
                    Cart</br>
                    <%=Id%></br>
                    <%=Name%></br>
                    <%=Price%></br>
                    <%=Stock%>
                </form>
            </div>
        </div></div>
</body>
</html>