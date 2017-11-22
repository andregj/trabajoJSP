<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cálculo del NIF</title>
</head>
<body>
<jsp:useBean id="d" class="es.uma.cursoWeb.Numero" scope = "page" />
<jsp:setProperty property="*" name="d"/>

<% String nif = "";
String mensaje = "";
if(d.getNumero() == null){
  mensaje = "Indique numero";
} else {
  nif += d.getNumero()+ "-" + d.calcularDNI(); 
}%>
<form method="GET" action="CalculoJSPBean.jsp">
<table style="width:80%;margin:auto;text-align:center">
<tr><td colspan="2"><h1>Cálculo del NIF</h1></td></tr>
<tr><td width="50%"><h2>Indique su DNI</h2></td><td><h2 >NIF</h2></td></tr>
<tr><td><input type="number" name="numero" /></td><td><i><%= nif %></i></td></tr>
<tr><td colspan="2"><i><%= mensaje %></i></td></tr>
<tr><td colspan="2"><button type="submit" >Calcular</button></td></tr>
</table>
</form>
</body>
</html>