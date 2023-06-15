<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	
	
String fname=request.getParameter("first_name");
String lname=request.getParameter("last_name");
String area=request.getParameter("area");
session.setAttribute("argito2", area);
String address=request.getParameter("deatil");
String qun=request.getParameter("Totqun");
String quality=request.getParameter("quality");
String wear=request.getParameter("clothes");
String size=request.getParameter("size");
String plan=request.getParameter("bussplan");
String season=request.getParameter("season");
session.setAttribute("argito", season);
String shopname=request.getParameter("shopname");
String totPrice="0";
String userid=(String)session.getAttribute("user");

String yourmail=request.getParameter("your_mail");

String updDate=request.getParameter("dat");
PrintWriter ou=response.getWriter();
int status=0;
String ispaid=null;
try
{
	if(userid.equalsIgnoreCase(yourmail))
	{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	
String qry2="select * from start_upreq where user='"+userid+"'";
ResultSet rs=con.prepareStatement(qry2).executeQuery();

if(rs.next()) 
{	
	
String query="insert into start_upreq(fname,lname,area,address,qun,quality,wear,clothes,size,plan,totInvest,shopname,season,user,paymentstatus,uploadDate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,area);
ps.setString(4,address);
ps.setString(5,qun);
ps.setString(6,quality);
ps.setString(7,wear);
ps.setString(8,wear);
ps.setString(9,size);
ps.setString(10,plan);
ps.setString(11,totPrice);
ps.setString(12,shopname);
ps.setString(13,season);
ps.setString(14,userid);
ps.setString(15,"closed");
session.setAttribute("refid",userid);
ps.setString(16,updDate);
status=ps.executeUpdate();

if(status>0)
{
	System.out.print(status);
%>
	<script>
alert('stat uploaded sucessfully')
window.location="statergiestablefrusers.jsp" </script>

	<%
}

}

else
{
	
	
	
	String query="insert into start_upreq(fname,lname,area,address,qun,quality,wear,clothes,size,plan,totInvest,shopname,season,user,paymentstatus,uploadDate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,area);
	ps.setString(4,address);
	ps.setString(5,qun);
	ps.setString(6,quality);
	ps.setString(7,wear);
	ps.setString(8,wear);
	ps.setString(9,size);
	ps.setString(10,plan);
	ps.setString(11,totPrice);
	ps.setString(12,shopname);
	ps.setString(13,season);
	ps.setString(14,userid);
	ps.setString(15,"pending");
	ps.setString(16,updDate);
 status=ps.executeUpdate();
 if(status>0 )
 {
		System.out.print(status);
 %>
	<%-- <jsp:forward page="viewStatergies.jsp"></jsp:forward> --%>
	<script>
 alert('COMPLETE PAYMENT PROCESS')
 window.location="isstatPay.jsp" 
 </script>
 <%
 	} 
	
}
	}
	
	else
	{
		%>
		<script>
		alert('Email Is Not Correct')
		 window.location="startgery.jsp" 	
		</script>
	
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