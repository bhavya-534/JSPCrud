package com.klu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewemployees")
public class ViewEmployeesServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		try
		{
			//int id=(int)(req.getAttribute("id"));
			int id=Integer.parseInt(req.getParameter("id"));
			System.out.println(id);
			Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serv","root","root");
            System.out.println("connected to database");
            PreparedStatement pstmt=con.prepareStatement("select * from employee where id="+id);
            ResultSet rs=pstmt.executeQuery();
            out.println("<table align=center border='2>");
            out.println("<tr bgcolor='lightblue'>");
            out.println("<th>ID</th>");
            out.println("<th>Name</th>");
            out.println("<th>Gender</th>");
            out.println("<th>Email</th>");
            out.println("<th>Password</th>");
            out.println("<th>mobile</th>");
            out.println("<th>department</th>");
            out.println("<th>location</th>");
            out.println("</tr>");
            while(rs.next())
            {
            	out.println("<tr>");
            	out.println("<td>"+rs.getString(1)+"</td>");
            	out.println("<td>"+rs.getString(2)+"</td>");
            	out.println("<td>"+rs.getString(3)+"</td>");
            	out.println("<td>"+rs.getString(4)+"</td>");
            	out.println("<td>"+rs.getString(5)+"</td>");
            	out.println("<td>"+rs.getString(6)+"</td>");
            	out.println("<td>"+rs.getString(7)+"</td>");
            	out.println("<td>"+rs.getString(8)+"</td>");
            	out.println("</tr>");
            }
            out.println("</table>");
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}
}
