<%@page import="java.sql.*" %>
<%
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
	            	HttpSession sess=request.getSession();
	            	String id=String.valueOf(rs.getInt(1));
	            	sess.setAttribute("id", id);
	            	sess.setAttribute("email", email);
	            	//RequestDispatcher rd=request.getRequestDispatcher("dashboardServlet");
	            	//rd.forward(request, response);
	            	response.sendRedirect("dashboard.jsp");
	            }
	            else {
	            	//RequestDispatcher rd=request.getRequestDispatcher("wrong_details.html");
	            	//rd.forward(request, response);
	            	response.sendRedirect("index.jsp");
	            }
	            con.close();
	        }
	        catch(Exception e){
	            System.out.println(e);
	            
	        }
%>