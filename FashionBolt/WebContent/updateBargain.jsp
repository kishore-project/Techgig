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
String Selproc=request.getParameter("bt");
System.out.println("Selproc"+"     "+Selproc);
if(Selproc.equalsIgnoreCase("Accepted"))
{
/* String choosenBran=""+session.getAttribute("getBrand")+"";
session.setAttribute("getchoosen",choosenBran); */
//System.out.println("choosenBrand"+"     "+choosenBran);
String Bqun=(String)session.getAttribute("getQun");
String Bcurr=(String)session.getAttribute("getCurr");
String Bmaxprice=(String)session.getAttribute("getMaxPara");
System.out.println("Bmaxprice"+"     "+Bmaxprice);
String Btot=(String)session.getAttribute("getTot");
System.out.println("Btot"+"     "+Btot);
String Barg="null";

String Bmail=(String)session.getAttribute("mailto");

try
{
Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
			String query="insert into bargainprod values('"+Bmail+"','"+Bqun+"','"+Bcurr+"','"+Bmaxprice+"','"+Btot+"','"+Barg+"')";
			int ps1=con.prepareStatement(query).executeUpdate();
	    		
			
			
				String query2="update productorreq set selcprocess='"+Selproc+"'";
			
	  PreparedStatement ps=con.prepareStatement(query2);
int i=     ps.executeUpdate();
if(i>0)
{
 RequestDispatcher rd=request.getRequestDispatcher("viewCus_ordBargReq.jsp");
 rd.forward(request, response);
}
		     }
		    catch(Exception e)
		    {
		    	e.printStackTrace();
		    
		    }


}
else
{
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	
		String query2="update productorreq set selcprocess='"+Selproc+"'";
	
PreparedStatement ps=con.prepareStatement(query2);
int i=     ps.executeUpdate();
if(i>0)
{
RequestDispatcher rd=request.getRequestDispatcher("Admin_cusOrd.jsp");
rd.forward(request, response);
}
     }
    catch(Exception e)
    {
    	e.printStackTrace();
    
    }
}


						  %>
						  </body>
</html>