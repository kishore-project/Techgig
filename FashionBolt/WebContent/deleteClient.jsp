<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String s=request.getParameter("id1");
try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root",
			"root");

	String query2 = "delete  from customerorderlogin where id='"+s+"'";
	PreparedStatement ps1 = con.prepareStatement(query2);
	int t=ps1.executeUpdate();
	
	if(t>0)
	{
		%><script>
		alert('Client User Deleted sucessfully')
		window.location="ClientLogin.jsp" </script><% 
	}
	else
	{
		%><script>
		alert('Deletion Unsucessfull')
		window.location="ClientLogin.jsp" </script><% 
	}
}
	catch (Exception e) {
		e.printStackTrace();
	}
	%>

</body>
</html>