<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmar Opinion</title>
</head>
<body>
<jsp:useBean id="op" class="es.uma.cursoWeb.Opinion" scope="session"/>
<jsp:setProperty property="*" name="op" />
<table>
<tr><td>Nombre: </td><td><jsp:getProperty property="nombre" name="op"/></td></tr>
<tr><td>Edad: </td><td><jsp:getProperty property="edad" name="op"/></td></tr>
<tr><td>Comentario: </td><td><jsp:getProperty property="comentario" name="op"/></td></tr>
</table>

<p><a href="Formulario.html"> Volver al formulario </a></p>
<p><a href="anadir.jsp"> A�adir comentario </a></p>

</body>
</html>