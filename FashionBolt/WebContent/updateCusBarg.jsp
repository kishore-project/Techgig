<%@page import="java.io.PrintWriter"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PrintWriter ou=response.getWriter();
String Barg=request.getParameter("gen1");
System.out.println("Barg"+"    "+Barg);
String Bmail=(String)session.getAttribute("mailto");
System.out.println("Bmail"+"    "+Bmail);
String user=request.getParameter("ad");
String Bname=request.getParameter("brandname");

if(user.equalsIgnoreCase("admin"))
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");

String query2="update bargainprod set bargamnt='"+Barg+"' where BrandMailId='"+Bmail+"'";
PreparedStatement ps=con.prepareStatement(query2);
int i=ps.executeUpdate(query2);
System.out.println("i"+"    "+i);
if(i>0)
{
	%><script>
alert('Bargain amount Updated Sucessfully')
window.location="ad_homepage.jsp" </script><%      	
}
}
catch(Exception e)
{
	e.printStackTrace();
}
}
else
{
	try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");

	String query2="update bargainprod set bargamnt='"+Barg+"' where BrandMailId='"+Bmail+"'";
	String qry="update customerorderlogin set Deal='closed' where email='"+Bmail+"'";
	PreparedStatement ps=con.prepareStatement(query2);
	int i=ps.executeUpdate(query2);
	
	
	
	System.out.println("i"+"    "+i);
	if(i>0)
	{
	

		%><script>
		alert('bargain amount updated Sucessfully')
		window.location="cusO_home.jsp" </script><% 

	}
}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}

%>
</body>
</html>