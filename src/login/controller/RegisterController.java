package login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.dao.RegisterDAOImp;
import login.model.User;

@WebServlet("/Register")
public class RegisterController extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegisterDAOImp registerDAO = new RegisterDAOImp();
		String uName = request.getParameter("uname");
		String uPassword = request.getParameter("pass");
		String uEmail = request.getParameter("email");
		
		if(!(uName.isEmpty() && uPassword.isEmpty() && uEmail.isEmpty())) {
			User user = new User(uName,uPassword,uEmail);
			registerDAO.create(user);
			response.sendRedirect("login.jsp");
		}		
	}

}
