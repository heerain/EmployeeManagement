package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import model.Employee;
import model.Login;

public class DaoMVC {

	private static Connection connect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_management","root","root");
			System.out.println("connected");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public static int registerUser(Employee modelMvc) {
		int i = 0;
		Connection con = connect();
		try {
			String sql = "insert into employee "
					+ "(f_name,l_name,e_type,gender,dob,email,uname,password,s_que1,ans1,s_que2,ans2,s_que3,ans3)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, modelMvc.getFirst_name());
			ps.setString(2, modelMvc.getLast_name());
			ps.setString(3, modelMvc.getEmp_type());
			ps.setString(4, modelMvc.getGender());
			ps.setString(5, modelMvc.getDob());
			ps.setString(6, modelMvc.getEmail());
			ps.setString(7, modelMvc.getUname());
			ps.setString(8, modelMvc.getPwd());
			ps.setString(9, modelMvc.getS_que1());
			ps.setString(10, modelMvc.getAns1());
			ps.setString(11, modelMvc.getS_que2());
			ps.setString(12, modelMvc.getAns2());
			ps.setString(13, modelMvc.getS_que3());
			ps.setString(14, modelMvc.getAns3());
			
			i = ps.executeUpdate(); 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	public static int checkLogin(Login login) {
		int i = 0;
		Connection con = connect();
		try {
			String sql = "select * from employee where uname=? AND pwd=? AND etype=?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, login.getUname());
			ps.setString(2, login.getPassword());
			ps.setString(3, login.getEtype());

			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				i++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
}
