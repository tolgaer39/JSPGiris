package _03_MVC.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _03_MVC.model.Person;


@WebServlet("/person")
public class PersonController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		List<Person> personList = PersonUtility.getPersons();
		
		req.setAttribute("PersonList", personList);
		
		RequestDispatcher view = req.getRequestDispatcher("requestDispatch/dispatchMe.jsp");
		
	}

}
