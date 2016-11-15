package _02_servletAttribute;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/myattribute")
public class MyAttribute extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// Context scope a yeni bir object ekledik.
		ServletContext context = getServletContext();
		context.setAttribute("name", "ali");
		
		// request scope a ekleme isteði;
		req.setAttribute("requestAttribute", "request value");
		
		// session scope a ekleme isteði;
		HttpSession session = req.getSession();
		session.setAttribute("sessionAttribute", "session value");
		
	}

}
