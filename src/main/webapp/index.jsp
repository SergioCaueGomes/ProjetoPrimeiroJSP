<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Primeiro - JSP</title>
</head>
<body>
	Primeira Pagina JPS
	<%! boolean formatar = true; %>
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		
	} %>
	
		<h1> A data de hoje e: <%= new java.util.Date()%> </h1>
		<h1> A data de hoje e: <%= today()%> </h1>
		<h1> A data de hoje e: <% 
									if (formatar){
										out.println(today());
									}else{
										out.println(new java.util.Date());
									}%></h1>
		
		



		<
				
					<h1>Saiba se os segundos são pares ou impares</h1>
					
				

				 <%! Calendar cal = Calendar.getInstance(); %> 
 
 					<%! Integer segundos(){
 	
 					return cal.get(Calendar.SECOND); 
				}
 				%>
 
 
 				<h1> <%
 						if (segundos()%2 == 0){
 							out.println(" Segundos sao pares");
 						}else{
 							out.println(" Segundos são impares");
 						}
 					%> </h1>

 
				<h1> <%=
						segundos() 	
 					%> </h1>
 									
					
				
		
</body>
</html>