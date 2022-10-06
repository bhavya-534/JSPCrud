<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
	<!-- Bootstrap CSS -->
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">  
	</head>
<body>
<%
		HttpSession sess=request.getSession(false);
     System.out.println(sess);
		if(sess!=null)
		{
			response.sendRedirect("dashboard.jsp");
		}
%>
	
				<h2 align=center>Home Page<hr><hr><br> 
				<div class="login-form">
			      <form action="signinServlet.jsp" method="POST">
			        <h2 style="font-weight: bold; color: #333">Patient Login</h2>
			        <div class="form-group">
			          <input
			            type="email"
			            class="form-control"
			            placeholder="Email"
			            required="required"
			            name="email"
			          />
			          <span id="span1"></span>
			        </div>
			        
			        <div class="form-group">
			          <input
			            type="password"
			            class="form-control"
			            placeholder="Password"
			            required="required"
			            name="password"
			          />
			        </div>
			        
			        <div class="form-group">
			          <button type="submit" class="btn btn-info btn-lg">Login</button>
			        </div>
			      </form>
			    </div>
				<a href="signup.html">Sign Up</a>&nbsp; &nbsp; 
	
</body> 
</html> 