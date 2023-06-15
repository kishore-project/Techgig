<%@page import="javax.mail.Session"%>
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
<% String mail=request.getParameter("email");
session.setAttribute("toemail", mail);
String pss=request.getParameter("Password");
Connection con = null;
ResultSet rs = null;
PreparedStatement stmt = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
    String qry="select * from boltzorderlogin where email='"+mail+"' and password='"+pss+"' ";		
    stmt=con.prepareStatement(qry);
	rs=stmt.executeQuery(qry);
if(rs.next()) {
	

	%><script>
alert('Boltz login sucessfully')
window.location="Bolthomepage.jsp" </script><% 

}
else {

	%><script>
alert('username/password incorrect')
window.location="index.html" </script><% 

	

}

}
catch(Exception e)
{
e.printStackTrace();			
} %>
</body>
</html>