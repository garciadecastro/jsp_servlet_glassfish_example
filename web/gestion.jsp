<%-- 
    Document   : gestion
    Created on : 26-may-2020, 17:49:48
    Author     : CARLOS GARCIA DE CASTRO
--%>

<%@page import="java.util.HashMap"%>
<%@page import="confirmacion.servicios.ClaseServicios"%>
<%@page import="confirmacion.servicios.Usuario"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/cssGestion.css" type="text/css"><link>
    </head>
    <body>
        <!--Se obtienen los atributos del usuario que pasa por el formulario -->
        <%
            Usuario user = (Usuario) request.getAttribute("user");
        %>
        <!-- Si el usuario cumple con los requisitos especiales, que su password comience por 0,
        se mostrará por pantalla lo que sigue-->
        Bienvenido/a <%=user.getNombre()%><br>
        Su id es: <%=user.getId()%> <br><br>

        <%
            ClaseServicios clServicio = new ClaseServicios();
            HashMap conjunto = clServicio.inicializar();
        %>
        Conjunto clave-valor de todos los empleados:<br>
        <jsp:expression> conjunto</jsp:expression>

    </body>
</html>
