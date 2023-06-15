<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.Statement"%>
      <%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%PrintWriter o=response.getWriter();
String emp = (String)session.getAttribute("toemail");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");

	String query2="delete from cartproducts where userCart='"+emp+"' ";
PreparedStatement st=con.prepareStatement(query2);
int i=st.executeUpdate();
System.out.println(emp);
if(i>0)
{
	
RequestDispatcher rs=request.getRequestDispatcher("boltzordershopping.jsp");
rs.forward(request, response);
}
else
{ 
	o.print("<html><body><script>alert('Internal Problem Occured in Server....') </script></body></html>");
	RequestDispatcher rs=request.getRequestDispatcher("boltzordershopping.jsp");
	rs.forward(request, response);
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>