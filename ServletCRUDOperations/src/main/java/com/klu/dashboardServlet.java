package com.klu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/dashboardServlet")
public class dashboardServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			String id=(String)session.getAttribute("id");
			String email=(String)session.getAttribute("email");
			response.sendRedirect("dashboard.html");
		}
		else
		{
			response.sendRedirect("index.html");
		}
		
		//RequestDispatcher rd=request.getRequestDispatcher("dashboardServlet");
    	//rd.forward(request, response);
	}

}
