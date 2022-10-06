<%@page import="java.sql.*" %>
<% 
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String mob=request.getParameter("mob");
		String dept=request.getParameter("dept");
		String loc=request.getParameter("loc");
		int id=(int)(Math.random()*99999)+1;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serv","root","root");
            System.out.println("connected to database");
	
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
				response.sendRedirect("viewemployee.jsp?id="+id);
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
%>