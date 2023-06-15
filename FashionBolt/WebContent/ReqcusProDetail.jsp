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
    <%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
<%
PrintWriter ou=response.getWriter();
String Brandnme=request.getParameter("brandname");
String Qun=request.getParameter("qun");
String MRP=request.getParameter("mrp");
String TotPrice=request.getParameter("totprice");
String Manufac=request.getParameter("manufdate");
String Gender=request.getParameter("gen");
String WeartMate=request.getParameter("wearmate");
String Weartype=request.getParameter("weartype");
String Sleeve=request.getParameter("sleeve");
String UpdDate=request.getParameter("expdat");
String mid=(String)session.getAttribute("mailto");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	String query="insert into productorreq(brandname,quantity ,currency ,MaxMRP ,totPrice,gender,sleeves,wearmaterial,weartype,manfdate,selcprocess,Deal,BrandEmailID,upddate)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	
	ps.setString(1,Brandnme);
	ps.setString(2,Qun);
	ps.setString(3,"RS");
	ps.setString(4,MRP);
	ps.setString(5,TotPrice);
	ps.setString(6,Gender);
	ps.setString(7,Sleeve);
	ps.setString(8,WeartMate);
	ps.setString(9,Weartype);
	ps.setString(10,Manufac);
	ps.setString(11,"no");
	ps.setString(12,"pending");
	ps.setString(13,mid);
	ps.setString(14,UpdDate);
	int i=ps.executeUpdate();
	System.out.println("i"+    +i);
	if(i>0)	
{

		%><script>
	alert('Uploaded Sucessfully')
	window.location="cusO_home.jsp" </script><% 

}

	else
	{
		%><script>
		alert('Upload Unsucessfull')
		window.location="Cant be Uploaded" </script><% 
		
	}

}
catch(Exception e)
{
	e.printStackTrace();
}

%>
			
</body>
</html>