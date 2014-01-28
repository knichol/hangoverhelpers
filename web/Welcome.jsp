<%@page import="java.util.*"%>

<html>
    <head>
        <title>Welcome Page</title></head>
    <body>
        <% String name = (String)session.getAttribute("user"); %>
        <% java.util.Date cr = new java.util.Date (session.getCreationTime()); %>
        <% java.util.Date lr = new java.util.Date (session.getLastAccessedTime()); %>
      
    <div style="font-size:25px;">click here to <a href="Logout">logout</a></div>
    <center>
        <div style="font-size: 30px;">
            <div>Hello <%=name%></div>
            <div>Login time: <%=cr%></div>
            <div>Last login: <%=lr%></div></div>
    </center>
    </head>
</body>
</html>
