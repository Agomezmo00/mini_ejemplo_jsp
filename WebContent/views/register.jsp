<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Jugador</title>
</head>
<body>
<body>

<h1>Registrar Jugador</h1>
	<form action="AdminJugador?action=register" method="post">
		<table border="1" align="center">
		
		<tr>
			<td>Nombre:</a></td>		
			<td><input type="text" name="nombre"/></td>	
		</tr>
		<tr>
			<td>Equipo:</a></td>		
			<td><input type="text" name="nombre_equipo"/></td>	
		</tr>
		<tr>
			<td>Posición:</a></td>		
			<td><input type="text" name="posicion"/></td>	
		</tr>
		<tr>
				<td>Altura:</a></td>		
				<td><input type="text" name="altura"/></td>	
		</tr>
		<tr>
				<td>Peso:</a></td>		
				<td><input type="text" name="peso"/></td>	
		</tr>
		<tr>
				<td>Procedencia:</a></td>		
				<td><input type="text" name="procedencia"/></td>	
		</tr>
		</table>
	<br>
	<table border="0" align="center">
		<tr>
		<td><input type="submit" value="Agregar" name="agregar"></td>	
		</tr>
	
	</form>


</body>
</html>