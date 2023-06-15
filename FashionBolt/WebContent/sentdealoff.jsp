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
String Bmail=(String)session.getAttribute("mailto");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	  
	String isDeal="closed";
	String query2="select * from productorreq where BrandEmailID='"+Bmail+"'";
	String qry="update customerorderlogin set Deal='closed' where email='"+Bmail+"'";
	
	PreparedStatement ps=con.prepareStatement(query2);
	ResultSet rs=ps.executeQuery();
	  System.out.print("saasda");
	
	
	
	if(Bmail.equalsIgnoreCase("Croc@gmail.com"))
	{
		  System.out.print("croc");
	String qrt="TRUNCATE table crocproduct";
	con.prepareStatement(qrt).executeUpdate();
	if(rs.next())
	{
		
		String Deal=rs.getString(13);
		session.setAttribute("toDeal", Deal);
int i=con.prepareStatement(qry).executeUpdate();
		if(i>0)
		{
		%><script>
	alert('Deal Closed sucessfully')
	window.location="ad_homepage.jsp" </script><% 

	}
	}
	}
	
	else if(Bmail.equals("Viendia@gmail.com"))
	{
	String qrt="TRUNCATE table viendiaproduct";
	con.prepareStatement(qrt).executeUpdate();
	if(rs.next())
	{
		
		String Deal=rs.getString(13);
		session.setAttribute("toDeal", Deal);
int i=con.prepareStatement(qry).executeUpdate();
		if(i>0)
		{
		%><script>
	alert('Deal Closed sucessfully')
	window.location="ad_homepage.jsp" </script><% 

	}
	}
	}
	else if(Bmail.equalsIgnoreCase("Ssj@gmail.com"))
	{
	String qrt="TRUNCATE table ssjproduct";
	con.prepareStatement(qrt).executeUpdate();
	if(rs.next())
	{
		
		String Deal=rs.getString(13);
		session.setAttribute("toDeal", Deal);
int i=con.prepareStatement(qry).executeUpdate();
		if(i>0)
		{
		%><script>
	alert('Deal Closed sucessfully')
	window.location="ad_homepage.jsp" </script><% 

	}
	}
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>