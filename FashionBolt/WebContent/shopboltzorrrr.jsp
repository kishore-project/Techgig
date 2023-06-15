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
    
<!doctype html>
<html lang="en">
  <head>
  	<title>Table 02</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="Cart_tables/css/style.css">

	</head>
	<body>

								 <%
								 String brand=request.getParameter("item_name");
									String mrp=request.getParameter("amount");
									String discount=request.getParameter("discount"); 
									String imgs=request.getParameter("imagee");
									
									%>
										<section class="ftco-section">
											<div class="container">
												<div class="row justify-content-center">
													<div class="col-md-6 text-center mb-5">
														<h2 class="heading-section">Boltz order Details</h2>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div class="table-wrap">
															<table class="table">
															  <thead class="thead-dark">
															    <tr>
															    <th>Image</th>
															      <th>BrandName</th>
															      <th>MRP</th>
															      <th>Discount</th>
															      
															      <th>Quantity</th>
															      <th>&nbsp;</th>
															    </tr>
															  </thead>
															   

						<% 
										try	{
											
																			Class.forName("com.mysql.jdbc.Driver");
																			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
																			String query="insert into cartproducts values(?,?,?,?,?,?,?,?)";
																			PreparedStatement ps=con.prepareStatement(query);
																			ps.setString(1,brand);
																			ps.setString(2,brand);
																			ps.setString(3,brand);
																			ps.setString(4,mrp);
																			ps.setString(5,discount);
																			ps.setString(6,imgs);
																			ps.setString(7,brand);
																			ps.setString(8,brand);
																			
																	int status=ps.executeUpdate();
																				
										}
					 
catch(Exception e)
{
e.printStackTrace();
}

%>
	
	<%
	String BrandProduct=null, Price=null,Offer=null,Pic=null,Calprice=null;
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	String query2="select * from cartproducts";
	PreparedStatement ps1=con.prepareStatement(query2);
	ResultSet s=ps1.executeQuery();
	while(s.next())
	{
		 BrandProduct=s.getString(2);
		 Price=s.getString(4);
		 char[] ch=Price.toCharArray();
		 int i=0;
		 String nPrice="";
		 while(i>=0)
		 {   
			 if(!Character.isAlphabetic(ch[i]))
		 {
			 nPrice=nPrice+ch[i];
		 }
		 }
		 
		 Offer=s.getString(5);
		 Pic=s.getString(6);
		 Integer Cal=(Integer.parseInt(nPrice))*(Integer.parseInt(Offer)/100);
	     Calprice=Cal.toString();
		%>
				<tbody>	
				
				
											    <tr class="alert" role="alert">
											      <th scope="row"><%=BrandProduct%></th>
											       <td><%=BrandProduct%></td> 
											      <td><%=Calprice%></td>
											      <td><%=Offer%></td>
											      <td><img  src="<%=Pic%>" width=100px height=100px alt=""  class="pro-image-front"></td>
											      <td>
											      	<a href="#" class="close" data-dismiss="alert" aria-label="Close">
									            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
									          	</a>
									          	
									        	</td>
											    </tr>
											    
											  </tbody>
																
																				
																	
		<%
	}
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	%>
																		  
										
											 
				</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="
Cart_tables/js/jquery.min.js"></script>
  <script src="
Cart_tables/js/popper.js"></script>
  <script src="
Cart_tables/js/bootstrap.min.js"></script>
  <script src="
Cart_tables/js/main.js"></script>


	</body>
</html>

    