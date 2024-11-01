<%-- 
    Document   : lista-usuarios
    Created on : 31 oct 2024, 19:18:35
    Author     : Abe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./styles.css"/>
        <title>Usuarios</title>
    </head>
    <body>
        <h1>Usuarios Registrados</h1>
        <h2>Usuarios registrados: ${fn:length(requestScope.usuarios)}</h2>
        <div class="contenedor">
            <c:forEach var="usuario" items="${requestScope.usuarios}">
                <div class="datos-usuario">
                    <div class="dato">Nombre: ${usuario.name}</div>
                    <div class="dato">Apellido: ${usuario.lastName}</div>
                    <div class="dato">Edad: ${usuario.age}</div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
