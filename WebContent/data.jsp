<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="servlets.InfoBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSP Sample</title>
	</head>
	<body>
		<table>
			<tr>
				<td>NOMBRE</td>
				<td>DNI</td>
				<td>PROFESION</td>
			</tr>
			
			<%
				for (InfoBean infob : (List<InfoBean>)request.getAttribute("infoData")) {
			%>		
				<tr>
					<td><%= infob.getNombre() %></td>
					<td><%= infob.getDni() %></td>
					<td><%= infob.getProfesion().getDescription() %></td>
				</tr>
			<%
				}
			%>
		</table>
	</body>
</html>