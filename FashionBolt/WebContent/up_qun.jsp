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
		      
		      
		      String quan_t=request.getParameter("qun");
		      String dupImg=null;
		   String em=(String)session.getAttribute("toemail");
		  	System.out.println("quantity"+quan_t);
		  	

		      try
		      {
		      Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");				
				String query2="select distinct * from cartproducts where userCart='"+em+"'";
				PreparedStatement ps1=con.prepareStatement(query2);
				ResultSet s=ps1.executeQuery();
			if(s.next())
				{
				dupImg=s.getString(6);
				}
                 		      String qr2="update cartproducts set quantity='"+quan_t+"' where userCart='"+em+"' and image='"+dupImg+"' and ";
                 		     PreparedStatement p2=con.prepareStatement(qr2);
                 		    p2.executeUpdate();
		      RequestDispatcher r=request.getRequestDispatcher("BoltzMenColl.jsp");
		     r.forward(request, response);
		      }
		      catch(Exception e)
		      {
		    	  e.printStackTrace();
		      }
                 		    
                 		    %> 
				
</body>
</html>