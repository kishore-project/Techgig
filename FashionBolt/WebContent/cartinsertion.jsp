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
							  String gender=request.getParameter("gen");
								 String brand=request.getParameter("item_name");
									String mrp=request.getParameter("amount");
									String quan=request.getParameter("qtn");   
									/* (String)session.getAttribute("luffy"); */
							//	session.setAttribute("forq", quan);
									System.out.println("quantity"+"     "+quan);
									String discount=request.getParameter("discount"); 
									String imgs=request.getParameter("imagee");
									 String em = (String)session.getAttribute("toemail");
									 
									 
									 
									 String siz1=request.getParameter("size1");
									 String siz2=request.getParameter("size2");
									 String siz3=request.getParameter("size3");
									 String siz4=request.getParameter("size4");
									 
									%>
									
						<% 
										try	{
											 
											  System.out.println("em"+"    "+em);
												System.out.println("quantity"+"     "+quan);
												System.out.println(imgs);
																			Class.forName("com.mysql.jdbc.Driver");
																			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");				
																			String query="insert into cartproducts(productname,price,quantity,discount,image,size,payment,userCart,gender) values(?,?,?,?,?,?,?,?,?)";
																			PreparedStatement ps=con.prepareStatement(query);
																			ps.setString(1,brand);
																			ps.setString(2,mrp);
																			ps.setString(3,quan);
																			ps.setString(4,discount);
																			ps.setString(5,imgs);
																			ps.setString(6,"no size");
																			ps.setString(7,"pending");
																			ps.setString(8,em);
																		   ps.setString(9, gender);
																			
																	int status=ps.executeUpdate();
												
																	if(status >0)
																	{
																		RequestDispatcher rd=request.getRequestDispatcher("BoltzMenColl.jsp");
																	    rd.forward(request,response);
																	}
																	else
																	{
																		RequestDispatcher rd=request.getRequestDispatcher("BoltzMenColl.jsp");
																	    rd.forward(request,response);					
																	}
																	
																	
										}
					 
catch(Exception e)
{
e.printStackTrace();
}

%> 
	<%
	  String emt = (String)session.getAttribute("toemail");
	String BrandProduct=null,dupImg=null,Price=null,Discnt=null,Pic=null,Disprice=null,Offer=null;int Calprice=0; int Cal=0 ,a=0;	float cc=0,ab=0,calcution=0,f=0;
	dupImg=request.getParameter("imagee");

	try
	{
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	String query2="select distinct * from cartproducts where userCart='"+emt+"'";
	PreparedStatement ps1=con.prepareStatement(query2);
	ResultSet s=ps1.executeQuery();
	while(s.next())
	{
		
		String Id=s.getString("id");
		session.setAttribute("id1", Id);
		BrandProduct=s.getString(2);
		Price=s.getString(4);
		session.setAttribute("upOrgprice", Price);
		Discnt=s.getString(5);
		session.setAttribute("upOrgDisnt", Discnt);
		dupImg=s.getString(6);
		session.setAttribute("upOrgimg", dupImg);
	

		
		 String qr="update cartproducts set Lamount='"+Disprice+"' where userCart= '"+em+"' and image='"+dupImg+"' ";
			 session.setAttribute("imag",dupImg);
		PreparedStatement ps2=con.prepareStatement(qr);
		ps2.executeUpdate();
				
	%>
	
																
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