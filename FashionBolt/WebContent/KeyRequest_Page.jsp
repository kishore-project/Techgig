
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
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

	    	<!-- 	<script>
	    		alert('Request has been updated')
	    		window.location('ad_homepage.jsp')
	         	</script>
	    		 -->
	    	
<%
PrintWriter ou=response.getWriter();
String req=(String)session.getAttribute("Admail");
String area=request.getParameter("user");
System.out.println(req +"          "+area);
String qry="select * from decryptionkey";
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
ResultSet rs=con.prepareStatement(qry).executeQuery();
while(rs.next())
{
	if(rs.getString(2).equalsIgnoreCase(req))
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
		
		String s1="update decryptionkey set decriptionid='0' where user_Name='"+req+"' and user_area='"+area+"'";
		int i2=con2.prepareStatement(s1).executeUpdate();
	        if(i2>0)
	        {
	        	ou.print("<html><body><script>alert('Order Approved for moving to storage');</script></body></html>");
	        	RequestDispatcher rs6 = request.getRequestDispatcher("index.html");
	        	rs6.forward(request, response); 
	        }
	
	}
	
	

}
if(rs.next()==false)
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
String s="insert into decryptionkey(user_Name,selcprocss,user_area)  values(?,?,?)";
PreparedStatement pd1=con1.prepareStatement(s);
pd1.setString(1,req);
pd1.setString(2, "rejected"); 
pd1.setString(3,area); 
int i=pd1.executeUpdate();

if(i>0)
{
	%>
	<jsp:forward page="index.html"></jsp:forward>
	<%
}
else
{
	%>
	<jsp:forward page="index.html"></jsp:forward>
	<%
}

}

%>
</body>
</html>