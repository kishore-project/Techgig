
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
try
{
int status=0;
String a=(String)session.getAttribute("argito");
System.out.println(a);
	String b=(String)session.getAttribute("argito2");
	System.out.println(b);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
String qry="select statergies from statdataup where season='"+a+"' and area='"+b+"'";
String qry2="select season,area from(select season,area from statdataup union select season,area from start_upreq)del where season='"+a+"' and area='"+b+"' ";
 
PreparedStatement ps=con.prepareStatement(qry2);
ResultSet r=ps.executeQuery();
if(r.next())
{
String qry4="select statergies from statdataup where season='"+r.getString(1)+"' and area='"+r.getString(2)+"' ";
PreparedStatement ps2=con.prepareStatement(qry4);
ResultSet rs=ps2.executeQuery();
if(rs.next())
{
	String qry3="insert into statg values ('"+rs.getString(1)+"')"; 
	PreparedStatement ps1=con.prepareStatement(qry3);
    status=ps1.executeUpdate();
    
    
}
}
   
/* ResultSet rs=ps1.executeQuery(); */

if(status>0)
{
	%>
	<jsp:forward page="start.jsp"></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="start.jsp"></jsp:forward>
	<%
}


}
catch(Exception e)
{
	e.printStackTrace();
}


%>
</body>
</html>