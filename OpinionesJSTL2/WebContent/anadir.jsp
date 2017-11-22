<%@page import="es.uma.cursoWeb.Libro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>opinion añadir </title>
</head>
<body>
<jsp:useBean id="op" class="es.uma.cursoWeb.Opinion" scope="session"/>
<jsp:useBean id="libro" class="es.uma.cursoWeb.Libro" scope="application"/>
<h1> Gracias ${op.nombre} por tu opinion </h1>
<p>Visite el <a href="libro.jsp">listado de opiniones</a></p>
<% libro.insert(op); %>
<% session.removeAttribute("op"); %>
</body>
</html>