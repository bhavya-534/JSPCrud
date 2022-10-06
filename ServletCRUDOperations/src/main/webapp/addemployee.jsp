<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="dashboard.jsp" %> 
<br><br>
<!DOCTYPE html> 
<html> 
<head> 
<title>Add Employee Form</title> 
</head>
<body> 
	<h2 align=center>Add Employee Record</h2><br> 
	<form name=f method="get" action="addemployeeServlet.jsp"> 
		<table align=center width=400 height=300> 
			<tr> 
				<td>Enter Name</td> 
				<td><input type="text" name="name" placeholder="Name" required></td> 
			</tr> 
			<tr> 
				<td>Select Gender</td> 
				<td><input type="radio" name="gender" value="male"" 
				required>Male&nbsp; &nbsp;<input type="radio" name="gender" 
				value="femaLle" required>FeMale</td> 
			</tr> 
			<tr> 
				<td>Enter Email Address</td> 
				<td><input type="email" name="email" placeholder="Email Address" required></td> 
			</tr> 
			<tr> 
				<td>Enter Password</td> 
				<td><input type="password" name="pwd" placeholder="Password" required></td> 
			</tr> 
			
			<tr> 
				<td>Enter Mobile Number</td> 
				<td><input type="number" name="mob" placeholder="Mobile Number" 
				required></td> 
			</tr> 
			
			<tr> 
				<td>Select Department</td> 
				<td> 
				<select name="dept" required> 
				<option value="">---Select---</option> 
				<option value="Marketing ">Marketing</option> 
				<option value="Finance">Finance</option> 
				<option value="Technical ">Technical</option> 
				<option value="Others ">Others</option> 
				</select> 
				</td> 
				</tr> 
				<tr> 
				<td>Enter Location</td> 
				<td><input type="text" name="loc" placeholder="Locatton" 
				required></td> 
			</tr> 
			<tr><td></td><td></tr> 
			<tr><td></td><td></tr> 
			<tr align=center> 
			<td colspan=2><input type="submit" value="Add EmpLoyee"></td> 
			</tr> 
		</table> 
	</form> 
</body> 
</html> 