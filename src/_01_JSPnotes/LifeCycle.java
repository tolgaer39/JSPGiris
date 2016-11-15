package _01_JSPnotes;

public class LifeCycle {

	// 1-> JSP dosyalari .java dosyasina translate edilir.
	// 2-> .java dosyalari .class dosyasina COMPILE edilir.
	// 3-> Servlet Container .class dosyasini yukler/Loading.
	// 4-> JspInit methodu calistirilir.
	// 5-> Yeni bir thread olusur ve _jspService methodu calisir.
	// 6-> eger ihtiyacimiz kalmazsa jspDestroy methodu calisir.
	// 7-> Translation ve complation islemi sadece bir kez calisir.
	//     eger jsp de degisiklik yapilirsa bu durum tekrar yaplir.
	
}
