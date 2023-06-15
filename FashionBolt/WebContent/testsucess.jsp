<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>               <%@page import="java.sql.ResultSet"%>
   <%@page import="java.sql.Statement"%>
      <%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
    <%@page import="java.util.*" %>
       <%@page import="java.io.*" %>
       <%@page import ="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PrintWriter ps=response.getWriter();
 String smail=(String)session.getAttribute("mailto");
 System.out.println(smail);
System.out.print("mmmss");
 try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
String g="select * from productorreq where BrandEmailID='"+smail+"'";
PreparedStatement ps1 = con.prepareStatement(g);
ResultSet rs1 = ps1.executeQuery();
rs1.first();
System.out.print("sss");

	if(rs1.getString(13).equalsIgnoreCase("closed"))
	{
		%> <script>
        	   alert('bargain deal off sucessfull')
        	    window.location="sucessfull.jsp";
        	   </script><% 
	/* 	RequestDispatcher rd=request.getRequestDispatcher("sucessfull.jsp");
		rd.forward(request, response); */
	}

	else
	{%>
		 <script>
  	   alert('deal is still pending')
     window.location="cusO_home.jsp";
  	   </script>
		<% /* RequestDispatcher rd=request.getRequestDispatcher("cusO_home.jsp");
		rd.include(request, response); */
	}
	


}
catch(Exception e)
{
e.printStackTrace();
}
 %>
</body>
</html>