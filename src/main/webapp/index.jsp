<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP</title>
</head>
<body>
	<h1>Primeira página JSP</h1>
	<%!boolean formatar = true; %>
	<%
		String today(){
		java.text.SimpleDateFormat dt = new java.text.SimplaDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}
%>
	
	
	<h1> A data de hoje é: <%= new java.util.Date() %> </h1>
	<h1>A data de hoje é: <%= today() %></h1>
	<h1>A data de hoje é: <% 
							if (format){
								out.println(today());
							}else{
								out.println(new java.util.Date());
							} %></h1>
							
</body>
</html>