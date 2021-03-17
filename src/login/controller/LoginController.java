package login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.dao.LoginDAO;


@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private LoginDAO loginDAO = new LoginDAO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uName = request.getParameter("uname");
		String uPassword = request.getParameter("pass");
		
		if(loginDAO.authentication(uName, uPassword)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uName);		
			response.sendRedirect("welcome.jsp");		
		}else {
			response.sendRedirect("login.jsp");
		}
	}



}

