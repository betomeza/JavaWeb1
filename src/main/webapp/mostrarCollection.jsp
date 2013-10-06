<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Collection<String> c = new ArrayList<String>();
    c.add("servlets");
    c.add("jsp");
    c.add("beans");
    c.add("tags");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>
            <%for (String item: c) {%>
            
            <li> <%= item%> </li>
            
            <% }%>
        </ul>
    </body>
</html>
