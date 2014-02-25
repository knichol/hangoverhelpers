<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <title>HangoverHelpers - Welcome</title><link  rel="shortcut icon" href="favicon.ico"/>
    <body>
        <% DateFormat formatter = DateFormat.getDateTimeInstance(
        DateFormat.MEDIUM, DateFormat.MEDIUM);
            String name = (String) session.getAttribute("user");%>
        <% java.util.Date cr = new java.util.Date(session.getCreationTime());
          
        %>

        <div style="font-size:25px;">click here to <a href="Logout">logout</a></div>
    <center>
        <div style="font-size: 30px;">
            <div>Hello <%=name%></div>
            <div>Login time: <%=  formatter.format(cr)   %></div>
        </div>
    </center>
    <form action="start" method="post">
        <input type="submit"value="Submit">   
    </form>
</head>
</body>
</html>
