package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoMVC;
import model.Employee;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String etype = request.getParameter("etype");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String sque1 = request.getParameter("s_que1");
		String ans1 = request.getParameter("ans1");
		String sque2 = request.getParameter("s_que2");
		String ans2 = request.getParameter("ans2");
		String sque3 = request.getParameter("s_que3");
		String ans3 = request.getParameter("ans3");
		
		Employee modelMvc = new Employee();
		modelMvc.setFirst_name(fname);
		modelMvc.setLast_name(lname);
		modelMvc.setEmp_type(etype);
		modelMvc.setGender(gender);
		modelMvc.setDob(dob);
		modelMvc.setEmail(email);
		modelMvc.setUname(uname);
		modelMvc.setPwd(pwd);
		modelMvc.setPhoneNumber(phone);
		modelMvc.setS_que1(sque1);
		modelMvc.setAns1(ans1);
		modelMvc.setS_que2(sque2);
		modelMvc.setAns2(ans2);
		modelMvc.setS_que3(sque3);
		modelMvc.setAns3(ans3);
		int i = DaoMVC.registerUser(modelMvc);
		
		if(i!=0) {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}else{
			System.out.println("Values are not inserted");
		}
		
	}

}
