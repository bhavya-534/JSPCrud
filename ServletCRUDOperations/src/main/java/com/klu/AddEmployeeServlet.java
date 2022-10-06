package com.klu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// servlet <->servlet
//1. RequestDispatcher(post) --- getAttribute
//2. SendRedirect (redirect to client & redirect to servlet) (Get) --getParameter

// client -> servlet
//only use -- getParameter


@WebServlet("/addemployee")
public class AddEmployeeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		String name=req.getParameter("name");
		String gender=req.getParameter("gender");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		String mob=req.getParameter("mob");
		String dept=req.getParameter("dept");
		String loc=req.getParameter("loc");
		int id=(int)(Math.random()*99999)+1;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serv","root","root");
            System.out.println("connected to database");
			//Statement stmt=con.createStatement();
			//String qry="insert into employee values("+name+","+gender+")";
			//stmt.executeUpdate(qry);
			
			PreparedStatement pstmt=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, email);
			pstmt.setString(5, pwd);
			pstmt.setString(6, mob);
			pstmt.setString(7, dept);
			pstmt.setString(8, loc);
			int n=pstmt.executeUpdate();
			if(n>0)
			{
				System.out.println("hi");
				//req.setAttribute("id", id);
				//RequestDispatcher rd=req.getRequestDispatcher("viewemployees");
				//rd.forward(req, res);
				res.sendRedirect("viewemployees?id="+id);
			}
			else
			{
				out.println("unable");
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}

}
