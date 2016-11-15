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
	 
	 int num1=(int)application.getAttribute("num1");
	 out.println(num1);	
	 
 	//diger sayfada ekledigim request i burdan cagıramam cunku request tek bir istek icindi.
	//int num2=(int)request.getAttribute("num2");
    //out.println(num2); 	
    
    // diger sayfada ekledigim session scope u burdan cagirabilirim...
    // fakat farkli bir tarayicida fakli session/oturum olacagindan deger null donecektir...
    int num2 = (int)session.getAttribute("num2");
    out.println(num2);
    
    int num3 = (int)pageContext.getAttribute("num3");
    out.println(num3);
    
%>

</body>
</html>