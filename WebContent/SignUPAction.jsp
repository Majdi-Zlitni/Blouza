<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String email=request.getParameter("email");
String name=request.getParameter("name");
String addres=request.getParameter("addres");
String user=request.getParameter("user");
String password=request.getParameter("password");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("INSERT INTO user values(?,?,?,?,?)");
	ps.setString(1, email);
	ps.setString(2, name);
	ps.setString(3, addres);
	ps.setString(4, user);
	ps.setString(5, password);
	ps.executeUpdate();
	response.sendRedirect("login.jsp?msg=valid");
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("SignUP.jsp?msg=invalid");
}
%>


 