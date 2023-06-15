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
    <html>
    <head>
    <body>
    <%
    
    String emp= (String)session.getAttribute("toemail");   
    Integer fPrice=0,fQuantity=0,result=0;
    String tot=null;
    
    try{
    	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");			
		String qry="select distinct * from cartproducts where userCart='"+emp+"' and ";
		PreparedStatement ps=con.prepareStatement(qry);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			fPrice=fPrice+Integer.parseInt(rs.getString(4));
			fQuantity=fQuantity+Integer.parseInt(rs.getString(3));
		}
		result=fPrice*fQuantity;
		tot=Integer.toString(result);
		session.setAttribute("totPay", tot);
		
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    
    %>
    
    
    
    
    
    
    </body>
    </head>
    </html>