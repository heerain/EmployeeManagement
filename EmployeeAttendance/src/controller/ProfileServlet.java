package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoMVC;
import model.Employee;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getAttribute("uname").toString();
		Employee emp = DaoMVC.getProfiledata(uname);
		request.setAttribute("empName", emp.getFirst_name()+ "  "+emp.getLast_name());
		request.setAttribute("email", emp.getEmail());
		request.setAttribute("dob", emp.getDob());
		request.setAttribute("phone", emp.getPhoneNumber());
		request.setAttribute("email", emp.getEmail());
		request.setAttribute("e_type", emp.getEmp_type());
		request.setAttribute("username", emp.getUname());
		RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
		rd.forward(request, response);
	}
}
