<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@page import = "java.util.List,_03_MVC.model.Person" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<%
	
	List<Person> personList =(List<Person>) request.getAttribute("myPersonList");

		
	%>
	
	<table>
		<%for(Person person:personList) 
		{
		%>
		<tr>
		 <td><% out.print(person.getName()); %></td>
		 <td><% out.print(person.getSurname()); %></td>
		 <td><% out.print(person.getBirthYear());%></td>
		</tr>
		<%}%>
	</table>

</body>
</html>