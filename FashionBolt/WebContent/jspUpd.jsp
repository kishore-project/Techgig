<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a = request.getParameter("id");
		System.out.print("id"+            ""+a);
		PrintWriter ou=response.getWriter();	
		try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
		String qry="update customerorderlogin set status='accepted' where id='"+a+"'";
		int status=con.prepareStatement(qry).executeUpdate();
		if(status>0)
		{
			ou.print("<html><body><script>alert('Accepted sucessfully') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("ad_homepage.jsp");
			rd.include(request, response);		
		}
		else
		{
			ou.print("<html><body><script>alert('update unsucessfull') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("ad_homepage.jsp");
			rd.include(request, response);		
		}	
		
		
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	

%>
</body>
</html>