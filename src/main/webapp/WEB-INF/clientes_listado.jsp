<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>

        <h3>Listado de Clientes Registrados</h3>
        <%@page import="java.util.ArrayList, clases.Cliente" %>
        <%
            ArrayList<Cliente> clientes = (ArrayList<Cliente>) request.getAttribute("CLIENTES_REGISTRADOS");
            out.println("<ul>");
            for (Cliente x : clientes) {
                out.println("<li>" + x.getNombreCompleto() + "</li>");
            }
            out.println("</ul>");
        %>

        <h3>Listado de Clientes VIP</h3>

        <%
            ArrayList<Cliente> vip = (ArrayList<Cliente>) session.getAttribute("CLIENTES_VIP");
            out.println("<ul>");
            for (Cliente x : vip) {
                out.println("<li>" + x.getNombreCompleto() + "</li>");
            }
            out.println("</ul>");
        %>

    </body>
</html>

