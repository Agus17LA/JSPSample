<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%! private int accesos = 0; %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSP Sample</title>
	</head>
	<body>
		<%
			Date hoy = Calendar.getInstance().getTime();
			DateFormat dFormat = new SimpleDateFormat("dd/mm/yyyy");
		%>
		<p>Hola!, hoy es <%= dFormat.format(hoy) %></p>
		<br>
		<h1> Visitas: <%= ++accesos %> </h1>
		<jsp:include page="demo.jsp">
			<jsp:param name="param1" value="ValorPrueba1"/>
			<jsp:param name="param2" value="ValorPrueba2"/>
			<jsp:param name="param3" value="ValorPrueba3"/>
		</jsp:include>

	</body>
</html>