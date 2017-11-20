<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuevo documento</title>
</head>
<body>
<h1> Mi primer fichero JSP</h1>
<h2>Ya se generar números aleatorios <%= Math.random()%></h2> 
<p> "Este documento se creó en " <%=new java.util.Date() %></p>
</body>
</html>