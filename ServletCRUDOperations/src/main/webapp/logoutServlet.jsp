<%
HttpSession sess=request.getSession(false);
if(sess!=null)
{
	session.invalidate();
}
response.sendRedirect("index.jsp");
%>