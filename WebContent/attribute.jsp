<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	int number1=10;
	int number2=20;
	int number3=30;
	
		application.setAttribute("num1", number1);
		
		//request.setAttribute("num2", number2);
		
		session.setAttribute("num2", number2);
		
		pageContext.setAttribute("num3", number3);

%>

</body>
</html>