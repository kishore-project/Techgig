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
<!doctype html>
<html lang="en">
  <head>
  	<title>Table 02</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="Cart_tables/css/style.css">
	
	<link rel="stylesheet" href="carting/css/style.css">
	<!-- Demo CSS (No need to include it into your project) -->
	<link rel="stylesheet" href="carting/css/demo.css">

<style>
    /* Style to center grid column */
    .col-centered{
        float: none;
        margin: 0 auto;
    }
    
    /* Some custom styles to beautify this example */
    .row{
        background: #dbdfe5;
    }
    .demo-content{
        padding: 25px;
        font-size: 18px;
        background: #abb1b8;
    }
</style>

 


	

	
	</head>
	<body>
	<a href="cartingordershop.jsp">BuyProduct</a>
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
									 
									%> <section class="ftco-section">
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
															    <th>Select</th>
															    <th>Id</th>
															    <th>BrandName</th>
															      <th>Image</th>
															      <th>MRP</th>
															      <th>Discount</th>
															     
															      <th>Remove</th>
															     
															      <th>Gender</th>
															      <th>SIZE</th>
															    
															      <th></th>
    <th>&nbsp;</th>
															    </tr>
															  </thead>
															   
 
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
				<tbody>	
				
				
											      <tr class="alert" role="alert">
											      
											    <%--   <form action="updateQun.jsp" method="post">
											      
											      <td>
											      <input type="checkbox" name="Chk" value="Checked">checked
											      </td>
											      
											      <th scope="row"> 
											      <%=s.getString(1)%><input type="hidden" <%=s.getString(1)%> name="id">
											      </th>							      
											      
											      <td> 
											      <%=s.getString(2)%>
											      </td>
											      
											      <td>
											      <img  src= <%=s.getString(6)%>width=100px height=100px alt=""  class="pro-image-front">
											      </td>
											      <td> <%=s.getString(4)%></td>	  
											      <td><%=s.getString(5)%></td>
											      </form>
                                                  <form action="deleteCart.jsp" method="post"> <td><button>Remove</button></td>										      	
											      </form>
											      <td><%=gender%></td>
											      <form>
											      <class="close" data-dismiss="alert" aria-label="Close">
									              <span aria-hidden="true"><i class="fa fa-close"></i></span> -->
									              </form>
			                                      </td>  --%>
									        
												   <td>
												   
												   </td>
												   <td>
												   
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
				<div class="container my-3 bg-light">
        <div class="col-md-12 text-center">															  
			<form action="paymentProcss.jsp"> <input type="submit" value="Placeorder" class="btn btn-primary"></form>							
					</div>
					</div>	
						   </form>
						   </form>	
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- 
	<script > const onChange = (e => {
	    if(e.target.value <= item.countInStock && e.target.value > 0){
	        
	        
	        
	     }
	 }

	 <input type="number" max={item.countInStock} min="0" onChange={checkValue}></script> -->
	<script src="
Cart_tables/js/jquery.min.js"></script>
  <script src="
Cart_tables/js/popper.js"></script>
  <script src="
Cart_tables/js/bootstrap.min.js"></script>
  <script src="
Cart_tables/js/main.js"></script>


	</body>
</html>>
</html>