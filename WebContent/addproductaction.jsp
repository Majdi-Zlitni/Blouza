<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
FileInputStream fis=null;
InputStream inputStream = null;
String id=request.getParameter("id");
String name=request.getParameter("name");
String price=request.getParameter("price");
String qte=request.getParameter("qte");
String categorie=request.getParameter("categorie");
String file=request.getParameter("file");

try{
	Connection con=ConnectionProvider.getCon();
	File image= new File(file);
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
	ps.setString(2,name);
	ps.setString(3,price);
	ps.setString(4,qte);
	ps.setString(5,categorie);
	fis=new FileInputStream(image);
	ps.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
	ps.executeUpdate();
	response.sendRedirect("addprod.jsp?msg=done");
	
	
	
	
}
catch(Exception e){
	response.sendRedirect("addprod.jsp?msg=undone");
	
}
%>