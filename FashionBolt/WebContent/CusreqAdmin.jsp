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
  <style>
  .body{
  background-color:blue}
.button-82-pushable {
  position: relative;
  border: none;
  background: transparent;
  padding: 0;
  cursor: pointer;
  outline-offset: 4px;
  transition: filter 250ms;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-82-shadow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background:#28a745; /* hsl(0deg 0% 0% / 0.25); */
  will-change: transform;
  transform: translateY(2px);
  transition:
    transform
    600ms
    cubic-bezier(.3, .7, .4, 1);
}

.button-82-edge {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: linear-gradient(
    to left,
    hsl(340deg 100% 16%) 0%,
    hsl(340deg 100% 32%) 8%,
    hsl(340deg 100% 32%) 92%,
    hsl(340deg 100% 16%) 100%
  );
}

.button-82-front {
  display: block;
  position: relative;
  padding: 12px 27px;
  border-radius: 12px;
  font-size: 1.1rem;
  color: white;
  background: hsl(345deg 100% 47%);
  will-change: transform;
  transform: translateY(-4px);
  transition:
    transform
    600ms
    cubic-bezier(.3, .7, .4, 1);
}

@media (min-width: 768px) {
  .button-82-front {
    font-size: 1.25rem;
    padding: 12px 42px;
  }
}

.button-82-pushable:hover {
  filter: brightness(110%);
  -webkit-filter: brightness(110%);
}

.button-82-pushable:hover .button-82-front {
  transform: translateY(-6px);
  transition:
    transform
    250ms
    cubic-bezier(.3, .7, .4, 1.5);
}

.button-82-pushable:active .button-82-front {
  transform: translateY(-2px);
  transition: transform 34ms;
}

.button-82-pushable:hover .button-82-shadow {
  transform: translateY(4px);
  transition:
    transform
    250ms
    cubic-bezier(.3, .7, .4, 1.5);
}

.button-82-pushable:active .button-82-shadow {
  transform: translateY(1px);
  transition: transform 34ms;
}

.button-82-pushable:focus:not(:focus-visible) {
  outline: none;
}

 </style>
  	<title>Table 02</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href='https://www.fontspace.com/typographica-font-f23015'>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="Cart_tables/css/style.css">


<link rel="stylesheet"
          href=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    
    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
  </script>
    
    <script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
  </script>
	</head>
	<body style="background-image: url('HA.jpg'); width:100%; height:100%; object-fit: cover;background-repeat:no-repeat;background-attachment: fixed;background-size: cover;"">
	<% 
	Connection con1 = null;
	ResultSet rs1 = null;
	PreparedStatement stmt1 = null;
	Class.forName("com.mysql.jdbc.Driver");
	con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	String qry="select count(*) from productorreq";
	
	ResultSet rst=con1.prepareStatement(qry).executeQuery();
	if(rst.next()==false)
	{
	%><script>
alert('No Requests From Clients')
window.location="Admin_cusOrd.jsp" </script> 
<%} 

	else
	{
%>
	
<!-- <!-- <form action="boltzorder_update.jsp" method="post">
<input type="file"><a href="" class="btn btn-outline-info" >Submit</a></form> -->
<!-- 	<section class="ftco-section">
		<div class="container">
		<form action="boltzorder_update.jsp" >
		
<label class="heading-section"> BoltzOrder</label>
<br></br>


 <h1>Upload Your <strong>Files</strong>To BoltzProduct</h1>
 <br></br>
 <label>Upload Date</label>
<br></br>
<input type="date" name="upd" >

<input type="file"><button class="upload"  type="submit" >Submit</button>
</form> -->


<!-- <label>WomensBoltzOrder</label>
<input type="file"><a href="" class="btn btn-outline-info" >Submit</a>
<label>KidsBoltzOrder</label>
<input type="file"><a href="" class="btn btn-outline-info" >Submit</a> -->


 <div class="container">
        <h1>
      <span style="color:green"></span>
      <button class='btn btn-success pull-right'><a href="Admin_cusOrd.jsp" >Back</a>

          </button>



			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h1 class="heading-section">Order Details</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<form action="updateBargain.jsp">
						<table class="table">
						  <thead class="thead-dark">
						    <tr>
						      	<th>&nbsp;</th>
						      	<th>ID</th>
						      <th>BrandName</th>
						      <th>Quantity</th>
						      <th>Currency</th>
						      <th>MRP</th>
						      <th>ToTPrice</th>
						      <th>Gender</th>
						      <th>Sleeves</th>
						      <th>WearMaterial</th>
						      <th>WearType</th>
						  
						      <th>Manfacture-Date</th>
						      <th>SelcProcess</th>
						    
						      <th>Deal Process</th>
						      
						    <center>  <th> Deal</th></center>
						      
						      
						      <th>&nbsp;</th>
						    </tr>
						  </thead>
						  <tbody>
					<%	try
 						     {
 						    Class.forName("com.mysql.jdbc.Driver");
 							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
 							String query2="select * from productorreq";
						  PreparedStatement ps=con.prepareStatement(query2);
						  ResultSet rs=ps.executeQuery();
						  while(rs.next())
						  {
						  
						  %>
						
						
						
						
						<td>&nbsp;</td>
						 <td><%=rs.getString(1)%></td>
						    
						      <td><%=rs.getString(2) %></td>
						      <td><%=rs.getString(3) %></td>
						      <td><%=rs.getString(4) %></td>
						      <td><%=rs.getString(5) %></td>
						      <td><%=rs.getString(6) %></td>
						        <% session.setAttribute("getBrand",rs.getString(2));
						        session.setAttribute("getQun",rs.getString(3));
						        session.setAttribute("getCurr",rs.getString(4));
						        session.setAttribute("getMaxPara",rs.getString(5));
						        session.setAttribute("getTot",rs.getString(6));
						        session.setAttribute("getGen",rs.getString(7));%>
						      <td><%=rs.getString(7) %></td>
						      <td><%=rs.getString(8) %></td>
						      <td><%=rs.getString(9) %></td>
						      <td><%=rs.getString(10) %></td>
						      <td><%=rs.getString(11) %></td>
						      <td><%=rs.getString(12) %></td> 
						     
						      <td><%=rs.getString(13) %></td>
				              <td>
		
		<button class="button-82-pushable" role="button" type="submit" name="bt" value="Accepted">
  <span class="button-82-shadow"></span>
  <span class="button-82-edge"></span>
  <span class="button-82-front text">
   Accept
  </span>
</button>
<br></br>
				<button class="button-82-pushable" role="button" type="submit" name="bt" value="Rejected">
  <span class="button-82-shadow"></span>
  <span class="button-82-edge"></span>
  <span class="button-82-front text">
   Reject
  </span>
</button>
		
			
				        	
				        	
				        	</td>
				            <td>&nbsp;</td>
						    </tr>
		</form>
		<% }
						}
						catch(Exception e)
						{
						e.printStackTrace();
						}%>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
<%} %>
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

    





















































<%-- 
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
  	<title>Table 05</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="reqCusordassets/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
	 <form action="updateBargain.jsp">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Order Request Table</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-responsive-xl">
						  <thead>
						    <tr>
						    	<th>&nbsp;</th>
						      <th>BrandName</th>
						      <th>Quantity</th>
						      <th>Currency</th>
						      <th>MRP</th>
						      <th>ToTPrice</th>
						      <th>Gender</th>
						      <th>Sleeves</th>
						      <th>WearMaterial</th>
						      <th>WearType</th>
						      <th>Manfacture-Date</th>
						      <th>SelcProcess</th>
						      <th>Deal Process</th>
						      <th>Deal</th>
						      
						      
						      <th>&nbsp;</th>
						    </tr>
						  </thead>
						  
						  
						  <%   
					/* 	  String brand=request.getParameter("item_name");
							String mrp=request.getParameter("amount");
							String quan=request.getParameter("qtn");   
							System.out.println("quantity"+"     "+quan);
							String discount=request.getParameter("discount"); 
							String totPrice=request.getParameter("imagee");
							 String gender = (String)session.getAttribute("toemail");
							 String sleeves = (String)session.getAttribute("toemail");
							 String wearmaterial = (String)session.getAttribute("toemail");
							 String weartype = (String)session.getAttribute("toemail");
							 String bargain = (String)session.getAttribute("toemail");
							 String selcProcss=request.getParameter("item_name");
							 String remove=request.getParameter("item_name");
							 String manf_date=request.getParameter("item_name");
 						     String currency=request.getParameter(""); */
	
 						    try
 						     {
 						    Class.forName("com.mysql.jdbc.Driver");
 							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
 							String query2="select * from productorreq";
						  PreparedStatement ps=con.prepareStatement(query2);
						  ResultSet rs=ps.executeQuery();
						  while(rs.next())
						  {
						  
						  %>
						  <tbody>
						    <tr class="alert" role="alert">
						    	
						     
						      
						      <td><%=rs.getString(1)%></td>
						    
						      <td><%=rs.getString(2) %></td>
						      <td><%=rs.getString(3) %></td>
						      <td><%=rs.getString(4) %></td>
						      <td><%=rs.getString(5) %></td>
						      <td><%=rs.getString(6) %></td>
						        <% session.setAttribute("getBrand",rs.getString(2));
						        session.setAttribute("getQun",rs.getString(3));
						        session.setAttribute("getCurr",rs.getString(4));
						        session.setAttribute("getMaxPara",rs.getString(5));
						        session.setAttribute("getTot",rs.getString(6));
						        session.setAttribute("getGen",rs.getString(7));%>
						      <td><%=rs.getString(7) %></td>
						      <td><%=rs.getString(8) %></td>
						      <td><%=rs.getString(9) %></td>
						      <td><%=rs.getString(10) %></td>
						      <td><%=rs.getString(11) %></td>
						      <td><%=rs.getString(12) %></td> 
						      <td><%=rs.getString(13) %></td>
						     
						    <!--  <td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox" checked>
										  <span class="checkmark"></span>
										</label>
						    	</td>
						      <td class="d-flex align-items-center">
						      	<div class="img" style="background-image: url(images/person_1.jpg);"></div>
						      	<div class="pl-3 email">
						      		
						      	</div>
						      </td> -->
						     
				        	<td class="status"><%=rs.getString(14)%></td>
				        	<!--  <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td> -->
				        	<td>
				        	<button type="submit" name="bt" value="Accepted">Accept</button>
				        	<button type="submit" name="bt" value="Rejected">Reject</button>
				        	</td>
				        
				        	
						    </tr>
						    
						    
						    
						   <!--  <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						      <td class="d-flex align-items-center">
						      	<div class="img" style="background-image: url(images/person_2.jpg);"></div>
						      	<div class="pl-3 email">
						      		<span>jacobthornton@email.com</span>
						      		<span>Added: 01/03/2020</span>
						      	</div>
						      </td>
						      <td>Jacobthornton</td>
						      <td class="status"><span class="waiting">Waiting for Resassignment</span></td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>
						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						      <td class="d-flex align-items-center">
						      	<div class="img" style="background-image: url(images/person_3.jpg);"></div>
						      	<div class="pl-3 email">
						      		<span>larrybird@email.com</span>
						      		<span>Added: 01/03/2020</span>
						      	</div>
						      </td>
						      <td>Larry_bird</td>
						      <td class="status"><span class="active">Active</span></td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>
						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						      <td class="d-flex align-items-center">
						      	<div class="img" style="background-image: url(images/person_4.jpg);"></div>
						      	<div class="pl-3 email">
						      		<span>johndoe@email.com</span>
						      		<span>Added: 01/03/2020</span>
						      	</div>
						      </td>
						      <td>Johndoe1990</td>
						      <td class="status"><span class="active">Active</span></td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>
						    <tr class="alert" role="alert">
						    	<td class="border-bottom-0">
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						      <td class="d-flex align-items-center border-bottom-0">
						      	<div class="img" style="background-image: url(images/person_1.jpg);"></div>
						      	<div class="pl-3 email">
						      		<span>garybird@email.com</span>
						      		<span>Added: 01/03/2020</span>
						      	</div>
						      </td>
						      <td class="border-bottom-0">Garybird_2020</td>
						      <td class="status border-bottom-0"><span class="waiting">Waiting for Resassignment</span></td>
						      <td class="border-bottom-0">
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr> -->
						     </tbody>
						    <% }
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
			</form>
		</div>
	</section>

	<script src="reqCusordassetsjs/jquery.min.js"></script>
  <script src="reqCusordassets/js/popper.js"></script>
  <script src="reqCusordassets/js/bootstrap.min.js"></script>
  <script src="reqCusordassets/js/main.js"></script>

	</body>
</html>
 --%>
