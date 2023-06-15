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
<%

String id = (String)session.getAttribute("id1");
System.out.println("upid"+" "+id);
String upQun=request.getParameter("qn");
System.out.println("upqun"+" "+upQun);
String em = (String)session.getAttribute("toemail");
System.out.println("emupqn"+" "+em);
String size=request.getParameter("size");  
System.out.println("size"+" "+size);

try
{
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
String qr="update cartproducts set size='"+size+"' where  id='"+id+"'";
PreparedStatement ps2=con.prepareStatement(qr);
int status=ps2.executeUpdate();
if(status>0)
{
	RequestDispatcher rs=request.getRequestDispatcher("boltzordershopping.jsp");
	rs.forward(request, response);
}
else
{
	
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>