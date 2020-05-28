<%-- 
    Document   : muestra
    Created on : 26-may-2020, 17:47:55
    Author     : CARLOS GARCÍA DE CASTRO
--%>

<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/cssMuestra.css" type="text/css"><link>
    </head>
    <body>
        <!-- Cuando la clave de usuario existe pero no comienza por 0 se muestra lo siguiente,
        un saludo de bienvenida pero no se da información sobre el resto de usuarios-->
    <div class="div01">    
        <jsp:useBean id="user" class="confirmacion.servicios.Usuario" scope="request"/>

        <h3 align="center">Bienvenido/a</h3> <jsp:getProperty name="user" property="nombre" /> <br>
        <h3 align="center">Su id es:</h3> <jsp:getProperty name ="user" property="id" />
</div>
        </body>
    </html>
