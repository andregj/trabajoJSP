<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fin de partida</title>
</head>
<c:choose>
<c:when test="${partida.numero eq partida.numero_adivinar}"> Enhobrabuena</c:when>
<c:otherwise>Fracaso Absoluto </c:otherwise>
</c:choose>
<c:remove var="partida"/>
<body>

</body>
</html>