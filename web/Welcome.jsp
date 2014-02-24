<%@page import="enterprise.web_jpa_war.entity.*"%>
<%@page import="enterprise.web_jpa_war.servlet.*"%>
<%@page import="java.util.*"%>


<html>
    <head>
        <title>HangoverHelpers - Welcome</title><link  rel="shortcut icon" href="favicon.ico"/>
    <body>
        <% String name = (String) session.getAttribute("user");%>
        <% java.util.Date cr = new java.util.Date(session.getCreationTime());%>
        <% java.util.Date lr = new java.util.Date(session.getLastAccessedTime());%>

        <div style="font-size:25px;">click here to <a href="Logout">logout</a></div>
    <center>
        <div style="font-size: 30px;">
            <div>Hello <%=name%></div>
            <div>Login time: <%=cr%></div>
            <div>Last login: <%=lr%></div>
        </div>
    </center>
    <form action="EntryServlet" method="post">
        <input type="submit"value="Submit">   
    </form>
</head>
</body>
</html>
