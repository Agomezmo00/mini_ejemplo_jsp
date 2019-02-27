<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mostrar Jugadores</title>
</head>
<body>
<h1>NBA Players</h1>
	<table>
		<tr>
			<td><a href="AdminJugador?action=index" >Ir al menú</a> </td>
		</tr>
	</table>
	
	<table border="1" width="100%">
		<tr>
		<td>EQUIPO</td>
		 <td>NOMBRE</td>
		 <td>POSICIÓN</td>
		 <td>ALTURA</td>
		 <td>PESO</td>
		 <td>PROCEDENCIA</td>
		 <td colspan=2>Opciones</td>
		</tr>
		<c:forEach var="jug" items="${lista}">
			<tr>
				<td><c:out value="${jug.nombre_equipo}"/></td>
				<td><c:out value="${jug.nombre}"/></td>
				<td><c:out value="${jug.posicion}"/></td>
				<td><c:out value="${jug.altura}"/></td>
				<td><c:out value="${jug.peso}"/></td>
				<td><c:out value="${jug.procedencia}"/></td>
				<td><a href="AdminJugador?action=showedit&codigo=<c:out value="${jug.codigo}" />">Editar</a></td>
				<td><a href="AdminJugador?action=eliminar&codigo=<c:out value="${jug.codigo}"/>">Eliminar</a> </td>				
			</tr>
		</c:forEach>
	</table>
</body>
</html>