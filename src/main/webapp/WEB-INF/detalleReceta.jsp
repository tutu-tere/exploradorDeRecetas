<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Detalle Recetas</title>
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>
    <h1>Detalle de la Receta</h1>

    <c:choose>
        <c:when test="${not empty nombreReceta}">
            <h2>${nombreReceta}</h2>
            
            <div class="container">
              <div class="cajita">
                <ul>
                  <c:forEach var="ingrediente" items="${ingredientes}">
                    <li>${ingrediente}</li>
                  </c:forEach>
                </ul>
              </div>
            </div>
        </c:when>
        <c:otherwise>
            <p style="color:red;">${mensaje}</p>
        </c:otherwise>
    </c:choose>
  </body>
</html>
