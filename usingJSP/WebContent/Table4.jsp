<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="GET" action="Table4.jsp">
Numero = <input type="text" name="numero"><br/>
<button type="submit"> Enviar </button>
</form>
<table>
<%!int num;%>
<% if(request.getParameter("numero")!=null){
  int num = Integer
      .parseInt(request.getParameter(
      "numero"));} %>
<table>

<tr><td> Divisores de <%=num%> </tr></td>
</table>
</body>
</html>