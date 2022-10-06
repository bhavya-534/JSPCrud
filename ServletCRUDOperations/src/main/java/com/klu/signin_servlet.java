package com.klu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signin_servlet")
public class signin_servlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password =request.getParameter("password");	
		 try 
		 {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serv","root","root");
	            String sql="select  * from employee where email=? and pwd=?";
	            PreparedStatement pstmt=con.prepareStatement(sql);
	            pstmt.setString(1,email);
	            pstmt.setString(2,password);
	            ResultSet rs=pstmt.executeQuery();
	            
	            if(rs.next()) {
	            	HttpSession session=request.getSession();
	            	String id=String.valueOf(rs.getInt(1));
	            	session.setAttribute("id", id);
	            	session.setAttribute("email", email);
	            	//RequestDispatcher rd=request.getRequestDispatcher("dashboardServlet");
	            	//rd.forward(request, response);
	            	response.sendRedirect("dashboard.jsp");
	            }
	            else {
	            	RequestDispatcher rd=request.getRequestDispatcher("wrong_details.html");
	            	System.out.println("Login Failed");
	            	rd.forward(request, response);
	            }
	            con.close();
	        }
	        catch(Exception e){
	            System.out.println(e);
	            
	        }
	}

}
