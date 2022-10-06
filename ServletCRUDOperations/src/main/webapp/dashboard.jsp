<!DOCTYPE html> 
<html> 
<head> 
<meta charset="ISO-8859-1"> 
<title>Employee CRUD Operations</title> 
</head> 
<body> 
		<%
		HttpSession sess=request.getSession(false);
		System.out.println(request.getSession(false));
		if(sess == null)
		{
			response.sendRedirect("index.jsp");
			//String id=(String)session.getAttribute("id");
			//String email=(String)session.getAttribute("email");
			//response.sendRedirect("dashboard.html");
		}
		String id=(String)sess.getAttribute("id");
		%>
	<h2 align=center>Servlet CRUD Operations on Employee Records</h2><hr><hr><br> 
	<a href="dashboard.jsp">Dashboard</a>&nbsp;&nbsp; 
	<a href="addemployee.jsp">Add Employee</a>&nbsp;&nbsp; 
	<a href="viewemployees.jsp">View Employees</a>&nbsp; &nbsp; 
	<a href="ListempLoyeeid">View Employee by ID</a>&nbsp;&nbsp; 
	<a href="dispLayempLoyees">Delete Employee</a>&nbsp;&nbsp; 
	<a href="#">Update Employee</a>&nbsp;&nbsp; 
	<a href="logoutServlet">Logout</a>&nbsp;&nbsp; 
</body> 
</html> 
<%
out.println(id);
%>