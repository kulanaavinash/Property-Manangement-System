package login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.dao.PropertyDAOImp;
import login.model.Property;


@WebServlet("/PropertyController")
public class PropertyController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private PropertyDAOImp propertyDAO = new PropertyDAOImp();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String action = request.getParameter("action");
		
        if(action == null) {
        	action = "LIST";
        }
        
        switch(action) {
        
        	case "LIST":
        		listProperties(request, response);
        	break;
        	
        	
        	case "EDIT":
        		editProperty(request, response);
        	break;
        	
        	case "DELETE":
        		deleteProperty(request, response);
        	break;
        }
        
	}
	

	private void deleteProperty(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");		
		propertyDAO.delete(Integer.parseInt(id));		
		listProperties(request,response);		
	}

	private void editProperty(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String id = request.getParameter("id");
		Property property = propertyDAO.findOne(Integer.parseInt(id));		
		request.setAttribute("property", property);
		RequestDispatcher dispatcher = request.getRequestDispatcher("update.jsp");
		dispatcher.forward(request, response);			
	}
	

	private void listProperties(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Property> propertyList = propertyDAO.findAll();
		request.setAttribute("propertyList", propertyList);		
		RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
        dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		PropertyDAOImp propertyDAO = new PropertyDAOImp();
		
		String id = request.getParameter("id");
		String propertyName = request.getParameter("powner");
		String statusName = request.getParameter("pstatus");
		String priceName = request.getParameter("pprice");
		String addressName =request.getParameter("paddress");
		String qty= request.getParameter("qty");
	    
		if(qty==null) {
		if(!(id == null)) {			
			
			
			Property property= new Property(Integer.parseInt(id), propertyName, statusName, priceName, addressName);			
			propertyDAO.update(property);
			response.sendRedirect("welcome.jsp");
			
		}else {		
			
			
			Property property = new Property(propertyName, statusName, priceName, addressName);			
			propertyDAO.create(property);
			response.sendRedirect("welcome.jsp");
		}
		}else{
			
			Property property = propertyDAO.findOne(Integer.parseInt(id));
			String aqty =property.getpropertyPrice();
			System.out.println(aqty);
			double amount = Double.parseDouble(aqty);
			double camount = Double.parseDouble(qty);
			double tamount = amount-camount;
			priceName=Double.toString(tamount);
		 System.out.println(tamount);
			Property pro= new Property(Integer.parseInt(id), priceName);
			
			propertyDAO.check(pro);
			response.sendRedirect("welcome.jsp");
			
		}
	}

}
