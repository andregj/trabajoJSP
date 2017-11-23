<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>JSTL fmt: Fechas</title>
</head>
<body>
<h3>Fechas y horas:</h3>
<c:set var="now" value="<%=new java.util.Date()%>" />

<p>Hora Actual: <fmt:formatDate type="time" value="${now}" /></p>

<p>Fecha Actual: </p><fmt:formatDate type="date" value="${now}"/>

<p>Fecha y Hora Actual: </p><fmt:formatDate type="both" value="${now}"/>
<fmt:setLocale value="en_US"/>

<p>Fecha y Hora Actual en inglés (solo esta): </p><fmt:formatDate type="both" value="${now}"/>

<fmt:setLocale value="es_ES"/> 

<p>Fecha y Hora Actual (formato corto): </p> <fmt:formatDate dateStyle="short" timeStyle="short" value="${now}"/>

<p>Fecha y Hora Actual (formato medio): </p> <fmt:formatDate dateStyle="medium" timeStyle="medium" value="${now}"/>

<p>Fecha y Hora Actual (formato largo): </p> <fmt:formatDate dateStyle="long" timeStyle="long" value="${now}"/>

<p>Fecha y Hora Actual (patrón: 20:03 24-11-2016): </p><fmt:formatDate pattern="HH:mm dd-MM-yyyy" value="${now}" />

</body>
</html>