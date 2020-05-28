<%-- 
    Document   : index
    Created on : 26-may-2020, 17:42:14
    Author     : CARLOS GARCIA DE CASTRO
--%>

<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
              
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticación en Darisa S.L.</title>
        <link rel="stylesheet" href="CSS/cssIndex.css" type="text/css"><link>
    </head>
    <body>
        
            <div class="div01">
            <h3 align="center">Hola, introduce usuario y contraseña.<br>Gracias
            </h3>
                
                </div>
        
        <!--Generamos un formulario con dos campos para texto (nombre y password), a través
        del método 'GET' irán al método doGET de nuestra clase Servlet "LoginServlet"-->
        <div class="div02">
        <form action="index" method="GET">
            <table>
                <tr><p>Nombre:</p> <input type="text" size="25" name="nombre"><br></tr>
            
            <tr><p>Password:</p><input type="password" size="15" name="Id">* <br><br></tr>
            

            <input type="submit" value = "Aceptar">
            <input type="reset" value="Reset">
            </table>

        </form>
            </div>
        </div>
    </body>
</html>
