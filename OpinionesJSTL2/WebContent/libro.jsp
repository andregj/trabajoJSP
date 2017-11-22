<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de opiniones</title>
</head>
<body>
<jsp:useBean id="opinion" class="es.uma.cursoWeb.Opinion" scope="session" />
<% int current = opinion.getIdentidad(); %>
<jsp:useBean id="libro" class="es.uma.cursoWeb.Libro" scope="application" />
<% if (libro.getLista().size() == 0) {%>
<h1>No hay opiniones. ¡Sea el primero </h1>
<% } else { %>
<h1>Hay ${libro.lista.size()} opiniones</h1>
<ul>

 <%-- 
 
<% for (int i=0; i< libro.getLista().size(); i++){
  pageContext.setAttribute("i",i);
 Otro metodo previo 
 
<font color="${(libro.lista[i].edad>18)?'blue':'red'}">${libro.lista[i].nombre}</font></li>*/
  Metodo previo
  
  --%>
  
  
 <c:forEach var="i" begin ="0" step ="1" end="${libro.lista.size()-1}">
<c:set var ="color" value= "blue" scope ="page" />
<c:if test="${libro.lista[i].edad < 18}">
<c:set var ="color" value= "red" scope ="page"/>
</c:if>
<li><font color= "${color}">${libro.lista[i].nombre}</font></li>
 </c:forEach>
</ul>
<%} %>

<p><a href="Formulario.html">Volver al formulario</a></p>
</body>
</html>