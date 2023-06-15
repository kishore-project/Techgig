<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
   <%@page import="java.sql.Statement"%>
      <%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String u_name=request.getParameter("name");
String u_email=request.getParameter("email");
String u_password=request.getParameter("password");
String u_cpassword=request.getParameter("cnpassword");
int i=0;
Connection con = null;


PreparedStatement stmt = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	
	String query="insert into boltzorderlogin(username,email,password) values(?,?,?) ";
	stmt=con.prepareStatement(query);
	stmt.setString(1,u_name);
	stmt.setString(2,u_email);
	stmt.setString(3,u_password);
	i=stmt.executeUpdate();
	System.out.println(i);
	if(i>0)
	{
		
		%><script>
alert('Boltz Registered sucessfully')
window.location="Boltslogs.jsp" </script><% 
	
	}
	else
	{
		%><script>
		alert('Boltz Registered unsucessfull')
		window.location="index.html" </script><% 
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
 %>
</body>
</html>