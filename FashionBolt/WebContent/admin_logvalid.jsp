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
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String mail=request.getParameter("name");

session.setAttribute("Admail",mail);
System.out.println(mail);
String pss=request.getParameter("password");
System.out.println(pss);

if(mail.equalsIgnoreCase("admin") && pss.equalsIgnoreCase("admin"))
{
	%>
	<script>
alert('Admin login sucessfully')
window.location="ad_homepage.jsp" </script>
	<% 
	

}
else
{

	%>
	<script>
alert('username/password incorrect')
window.location="index.html" </script>
	<% 
}
 %>
</body>
</html>