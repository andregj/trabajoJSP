<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="partida" class="es.uma.cursoWeb.Partida" scope ="session"/>
<jsp:setProperty property="numero" name="partida"/>
${partida.numero_adivinar} - ${partida.numero}

<c:if test="${!empty partida.numero}">

<% partida.getNumeros_previos().add(partida.getNumero());%>
<%-- ${partida.numeros_previos.add(partida.numero)} Metodo Alternativo--%>
<c:set target="${partida}" property="intentos" value="${partida.intentos + 1}" />
</c:if>
<%-- <% partida.setNumero(null) Metodo alternativo--%>

<c:if test="${partida.numero eq partida.numero_adivinar or partida.intentos > partida.max_intentos}" >
<c:redirect url="fin.jsp">
</c:redirect>
</c:if>
<c:set target="${partida}" property="numero" value="${null}" />
<div style = "text-align:center">
<h1>Juego Adivina un numero (entre 1 y 100) - Intento ${partida.intentos} de ${partida.max_intentos} </h1>
<form
method="POST" action="juego.jsp">
<p><input type="number" name="numero"/></p>
<p><button type="submit">Probar numero</button></p>
</form>
<h1>Numeros Probados</h1>
<table style="margin:auto">
<c:forEach var = "i" items="${partida.numeros_previos}">
<c:set var ="color" value="green" />
<c:set var ="palabra" value="Menor" />
<c:if test="${ i < partida.numero_adivinar}">
<c:set var ="color" value="red" />
<c:set var ="palabra" value="Mayor" />
</c:if>
<tr><td>${i}</td><td><font color ="${color}">${palabra}</font></td></tr>
</c:forEach>
</table>
</div>
</body>
</html>