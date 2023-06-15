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
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
PrintWriter ou=response.getWriter();
String l=request.getParameter("mail");

session.setAttribute("mailto",l) ;
System.out.println(l);

String pss=request.getParameter("Password");

System.out.println(pss);

Connection con = null;
ResultSet rs = null;
PreparedStatement stmt = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
    String qry="select * from customerorderlogin where email ='"+l+"' and password ='"+pss+"'";		
    stmt=con.prepareStatement(qry);
	rs=stmt.executeQuery(qry);
if(rs.next()) {

	%><script>
alert('Client login sucessfully')
window.location="cusO_home.jsp" </script><% 

	

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
}
 %>

</body>
</html>