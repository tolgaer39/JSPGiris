<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- id degeri UseBeanProperty sinifinda request scope ekledigimiz objenin id degeri.. -->
<!-- class degeri ise ilgili objenin sinifi... -->
<jsp:useBean id="person1" class="_03_MVC.model.Person" scope="request"></jsp:useBean>


<!-- getProperty ile tarayiciya bastirabiliriz
	 burada name degerim useBean deki id degerimdir.
	 propery ise ilgili person sinifintaki ilgili instance degiskenlerdir... -->
<table border="1">	 
<tr>
	<td> <jsp:getProperty property="name" name="person1"/> </td>
	<td> <jsp:getProperty property="surname" name="person1"/> </td>
	<td> <jsp:getProperty property="birthYear" name="person1"/> </td>
</tr>
</table>


<!-- eger ilgili id degerine sahip obje yoksa olusturur. -->
<jsp:useBean id="noiddeger" class="_03_MVC.model.Person" scope="request"></jsp:useBean>
<jsp:setProperty property="name" name="noiddeger" value="test name"/>
<jsp:setProperty property="surname" name="noiddeger" value="test surname"/>
<jsp:setProperty property="birthYear" name="noiddeger" value="2001"/>

<!-- setpropery tarayiciya yaz.. -->
<table border="1">	 
<tr>
	<td> <jsp:getProperty property="name" name="noiddeger"/> </td>
	<td> <jsp:getProperty property="surname" name="noiddeger"/> </td>
	<td> <jsp:getProperty property="birthYear" name="noiddeger"/> </td>
</tr>
</table>


</body>
</html>