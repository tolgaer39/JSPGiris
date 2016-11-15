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

	// scriptlette service methodunda bunlar tanimlidir.
	out.print("out implicit object");

	request.setAttribute("jspRequestAttribute", "jsp request attribute value");
	
	session.setAttribute("jspSessionAttribute", "jsp session attribute value");
	
	application.setAttribute("jspApplicationAttribute", "jsp application attribute value");
	
	pageContext.setAttribute("pageScopeAttribute", "pagescope attribute value");

%>

</body>
</html>