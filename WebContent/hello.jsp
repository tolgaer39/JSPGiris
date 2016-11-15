<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Bu bir JSP Directive, importu kullanarak istedigimiz sinifi import edebiliyoruz...
    	 Birden fazla import islemi icin araya virgul koyarak devam edebiliriz... -->
    <%@ page import="java.util.List,java.util.ArrayList" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	//JSP Scriplet
	System.out.println("java kodu...");
	for(int i=0;i<=7; i++){
		System.out.println("i :"+i);
	}
	
	List <String>names = new ArrayList<String>();
	
	String name = "test name:"; //Farkli scriptletlerde ayni isimde degisken tanimlanmaz...
	// Tum scriptlet kodlari ve expression kodlari _jspService adi verilen bir method icerisinde yer alacaktir.
	// Bu sekilde translate islemine tabi tutulur.
	// Hepsi local degiskenlerdir.
%>

<!-- JSP Expression, tarayiciya veri basmaya yarar.. -->
<!-- JSP Expression da =(esittir) isareti vardır Scriptlette yoktur...
	 JSP Expressionda ;(nokatali virgul) yer almaz.
	 Kucuktur isareti ile % isareti arasinda bosluk olmamalidir... 
	 
	 -->
<%= name %> 

<!-- JSP Declaration, % den sonra ! unlem yer almaktadir
	 Burda tanimladigimiz degiskenler instance degiskenlerdir ve burda method tanimlayabiliriz.
	 JSP Declaration kodlari _jspService methodunun disinda tranlate edilirler. Tomcat in bulundugu dizine gorebilirsiniz... -->
<%!
	private int number;

	public int addNumber(int n1, int n2){
		number = n1+n2;
		return number;
	}
%>

<%=addNumber(4,6) %>

<%-- JSP Comment bu sekildedir... --%>

</body>
</html>