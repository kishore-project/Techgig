<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
<%@page import="java.io.*" %>
<%@ page import="java.util.Date" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a="rejected",b="accepted";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");

System.out.println(a);
System.out.println(b);

String qry2="select * from decryptionkey where user_Name='admin' ";


PreparedStatement ps = con.prepareStatement(qry2);
ResultSet rs = ps.executeQuery();
if(rs.next())
	{
	System.out.println( "        "+rs.getString(4)+" ");
	String av = rs.getString(3);
	if(av.equalsIgnoreCase("rejected"))
	{
		RequestDispatcher rss=request.getRequestDispatcher("index.html");
		rss.forward(request,response);
	}
	else
	{
		String qry="update decryptionkey set  selcprocss='rejected',decriptionid='0' where  user_Name='admin' and selcprocs='accepted'";
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
		PreparedStatement ps1=con1.prepareStatement(qry);
		int i=ps1.executeUpdate();
		System.out.print(i);
		if(i>0)
		{
			RequestDispatcher rss=request.getRequestDispatcher("index.html");
			rss.forward(request,response);
			
			
		}	
		
	}


	}

	%>


</body>
</html>