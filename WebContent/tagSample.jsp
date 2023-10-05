<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="servlets.Profesion"%>
<%@ page import="java.util.Calendar"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSP Sample</title>
		<META HTTP-EQUIV="REFRESH" CONTENT="1;"> </head>
	</head>
	<c:set var="fecha" value="<%= Calendar.getInstance().getTime() %>"/>
	
	<c:set var="xmlInfo">
		<vehiculos>
			<vehiculo>
				<marca>CHEVROLET</marca>
				<modelo>CRUZE</modelo>
				<patente>AE841AW</patente>
			</vehiculo>
			<vehiculo>
				<marca>FORD</marca>
				<modelo>FOCUS</modelo>
				<patente>AA258ER</patente>
			</vehiculo>
			<vehiculo>
				<marca>FIAT</marca>
				<modelo>FIESTA</modelo>
				<patente>AC456RT</patente>
			</vehiculo>
			<vehiculo>
				<marca>RENAULT</marca>
				<modelo>FLUENCE</modelo>
				<patente>AB747TT</patente>
			</vehiculo>
			<vehiculo>
				<marca>PEUGEOT</marca>
				<modelo>408</modelo>
				<patente>AA258AS</patente>
			</vehiculo>
		</vehiculos>
	</c:set>
	
	<body>
		<b><h1><fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss" value="${fecha}" /></h1></b>
		<br>
		<table>
			<tr>
				<td>NOMBRE</td>
				<td>DNI</td>
				<td>PROFESION</td>
			</tr>
			<c:forEach items="${infoData}" var="item">
				<c:if test="${item.profesion == Profesion.MEDICO}">
					<c:set var="colorValue" value="red" />
				</c:if>
				<c:if test="${item.profesion == Profesion.DEVELOPER}">
					<c:set var="colorValue" value="blue" />
				</c:if>
				<c:if test="${item.profesion == Profesion.EMPLEADO_PUBLICO}">
					<c:set var="colorValue" value="green" />
				</c:if>
				<tr style="color: ${colorValue};">
					<td><c:out value="${item.nombre}" /></td>
					<td><c:out value="${item.dni}" /></td>
					<td><c:out value="${f:toUpperCase(item.profesion.description)}" /></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<x:parse xml="${xmlInfo}" var="xmlInfoParsed"/>
		<table>
			<tr>
				<td>MARCA</td>
				<td>MODELO</td>
				<td>PATENTE</td>
			</tr>
			<tr>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[1]/marca" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[1]/modelo" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[1]/patente" /></td>
			</tr>
			<tr>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[2]/marca" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[2]/modelo" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[2]/patente" /></td>
			</tr>
			<tr>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[3]/marca" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[3]/modelo" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[3]/patente" /></td>
			</tr>
			<tr>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[4]/marca" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[4]/modelo" /></td>
				<td><x:out select="$xmlInfoParsed/vehiculos/vehiculo[4]/patente" /></td>
			</tr>
		</table>		
	</body>
</html>