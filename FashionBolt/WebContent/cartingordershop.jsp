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
  	<title>Table 06</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="tablescartassest/css/style.css">
<script>
	function sum()
	{
	  var w = document.getElementById('rate').value || 0;
	  var y = document.getElementById('qun').value || 0;
	  
	  var z = parseInt(w) * parseInt(y);
	  document.getElementById('gst').value = z;
	  document.getElementById('tot').value = z + z; 
	
	};
	
	function grandtotal()
	{
		var t1 = document.getElementById('tot').value || 0;
		document.getElementById('gt').value =  parseInt(t1);
		
	}
	
	function validate(evt) {
		  var theEvent = evt || window.event;

		  // Handle paste
		  if (theEvent.type === 'paste') {
		      key = event.clipboardData.getData('text/plain');
		  } else {
		  // Handle key press
		      var key = theEvent.keyCode || theEvent.which;
		      key = String.fromCharCode(key);
		  }
		  var regex = /[0-9]|\./;
		  if( !regex.test(key) ) {
		    theEvent.returnValue = false;
		    if(theEvent.preventDefault) theEvent.preventDefault();
		  }
		};
    </script>
	
	</head>
	<body>
		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">Table #06</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center">Table Accordion</h3>
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>
						    	<th>&nbsp;</th>
						    	<th>&nbsp;</th>
						                                    	 <th>Select</th>
															     <th>Id</th>
															     <th>BrandName</th>
															     <th>Image</th>
															     <th>MRP</th>
															     <th>Discount</th>
															     <th>Remove</th>
															     <th>Gender</th>   
															     <th>Quantity</th>
															     <th>SIZE</th>
															     <th>Total</th>
						      <th>&nbsp;</th>
						    </tr>
						  </thead>
						  <tbody>
	  <%
			  String brandId=request.getParameter("item_nameId");
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
									 
									 try
									 {
										    Class.forName("com.mysql.jdbc.Driver");
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");				
											String query="select * from update_boltzorder where id='"+brandId+"'";
											PreparedStatement ps=con.prepareStatement(query);
											ResultSet rs1=ps.executeQuery();
									while(rs1.next())
									{
									%>

						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox" checked>
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	
						    	<th scope="row"><%=brandId%><input type="hidden"  name="item_id" id="id" readonly" ></th>
						    	<th scope="row"><%=brand%><input type="hidden"  name="item_name" id="bdname" readonly" ></th>	
<td><img  src="<%=rs1.getString(14)%>"  width=100px height=100px alt=""  class="pro-image-front"></td>						      
<td>Rs.<%=mrp%><input type="hidden" id="rate"  value="<%=mrp%>" readonly></td>
<th scope="row"><%=rs1.getString(10)%><input type="hidden"  name="dis" id="disc" readonly" ></th>	
<td></td>
<td><%=rs1.getString(12)%></td>
<td><input type="text" MAXLENGTH="2" name="qun" id="qun" onkeyup="sum();grandtotal();" onkeypress='validate(event)'></td>
<td></td>
<td><input type="text" id="gst" name="g1" readonly></td>
						    	
				
						    </tr>
<% }
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
						 
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="tablescartassest/js/jquery.min.js"></script>
  <script src="tablescartassest/js/popper.js"></script>
  <script src="tablescartassest/js/bootstrap.min.js"></script>
  <script src="tablescartassest/js/main.js"></script>

	</body>
</html>

