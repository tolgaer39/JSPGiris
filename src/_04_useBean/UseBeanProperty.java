package _04_useBean;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _03_MVC.model.Person;

@WebServlet("/usebean")
public class UseBeanProperty extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Person person = new Person("ali", "can", 2001);
		
		req.setAttribute("person1", person);
		
		RequestDispatcher view = req.getRequestDispatcher("useBean/myUseBean.jsp");
		view.forward(req, resp);
		
	}
}
