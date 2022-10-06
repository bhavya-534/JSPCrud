<%@page import="java.sql.*" %>
<%@include file="dashboard.jsp" %> 
<br><br>
<table align=center border='2'>
	<tr bgcolor='lightblue'>
		<th>ID</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Email</th>
		<th>Password</th>
		<th>Mobile</th>
		<th>Department</th>
		<th>Location</th>
	</tr>
<%
	try
	{
		int eid=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Class.forName("com.mysql.jdbc.Driver");
        System.out.println("Driver Loaded");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serv","root","root");
        System.out.println("connected to database");
        PreparedStatement pstmt=con.prepareStatement("select * from employee where id="+eid);
        ResultSet rs=pstmt.executeQuery();
        while(rs.next())
        {
%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
	</tr>
<% 
		}
	}
		catch(Exception e)
		{
			out.println(e);
		}
%>
</table>
