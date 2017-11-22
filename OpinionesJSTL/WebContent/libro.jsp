<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<% for (es.uma.cursoWeb.Opinion op:libro.getLista()){ %>
<li><% if(current == libro.getLista().size()){%>
<i> <b><FONT>COLOR="red"><%= op.getComentario() %></i> by <b><%= op.getNombre() %></b> (<%= op.getEdad() %> años)</FONT>
</li>
<% } else {%>
<i> <%= op.getComentario() %></i> by <b><%= op.getNombre() %></b> (<%= op.getEdad() %> años)
</ul>
<%} %>
<%} %>
<%} %>
<p><a href="Formulario.html">Volver al formulario</a></p>
</body>
</html>