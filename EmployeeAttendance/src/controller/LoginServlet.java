package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoMVC;
import model.Login;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String password = request.getParameter("pass");
		String etype = request.getParameter("etype");
		
		Login login = new Login();
		login.setUname(uname);
		login.setPassword(password);
		login.setEtype(etype);
		
		int i=DaoMVC.checkLogin(login);
		
		if(i!=0) {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}else{
			System.out.println("Values are not inserted");
		}
		
	}

}
