<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Jugador</title>
</head>
<body>
<h1>Actualizar Jugador</h1>
	<form action="AdminJugador?action=editar" method="post" >
		<table>
			<tr>
				<td><label>Código</label></td>
				<td><input type="text" name="codigo" value="<c:out value="${jugador.codigo}"></c:out>" ></td>
			</tr>
			<tr>
				<td><label>Nombre</label></td>
				<td><input type="text" name="nombre" value='<c:out value="${jugador.nombre}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Equipo</label></td>
				<td><input type="text" name="nombre_equipo" value='<c:out value="${jugador.nombre_equipo}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Posición</label></td>
				<td><input type="text" name="posicion" value='<c:out value="${jugador.posicion }"></c:out>' ></td>
			</tr>

			<tr>
				<td><label>Altura</label></td>
				<td><input type="text" name="altura" value='<c:out value="${jugador.altura }"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Peso</label></td>
				<td><input type="text" name="peso" value='<c:out value="${jugador.peso }"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Procedencia</label></td>
				<td><input type="text" name="procedencia" value='<c:out value="${jugador.procedencia }"></c:out>' ></td>
			</tr>
		</table>
		<input type="submit" name="registrar" value="Guardar"> 
	</form>

</body>
</html>