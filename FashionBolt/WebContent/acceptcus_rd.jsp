<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">
<head>
<title>Table 02</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="Cart_tables/css/style.css">

<link rel="stylesheet" href="carting/css/style.css">
<!-- Demo CSS (No need to include it into your project) -->
<link rel="stylesheet" href="carting/css/demo.css">


<style>
/* Style to center grid column */
.col-centered {
	float: none;
	margin: 0 auto;
}

/* Some custom styles to beautify this example */
.row {
	background: #dbdfe5;
}

.demo-content {
	padding: 25px;
	font-size: 18px;
	background: #abb1b8;
}
</style>

<style type="text/css">
$
quantity-btn-color: #95d7fc ;
.form-group {
	width: 10%;
	margin: 30px; input [type="text"] { width : 100%;
	text-align: right;
}

.glyphicon {
	color: $quantity-btn-color;
}
}
</style>
<!--  -->
</head>
<body>
	<a href="Admin_cusOrd.jsp" class="btn btn-outline-secondary"
		style="position: relative">Back</a>
	<section class=class="ftco-section"   >
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Client Request</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<form action="Updacceptcus_ord" method="post">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>Id</th>
										<th>BrandName</th>
										<th>BrandMail</th>
                                        <th>Deal</th>
                                        <th>UploadStatus</th>
                                        
										<th>status</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
	String ss="select * from customerorderlogin";	
  ResultSet r=con.prepareStatement(ss).executeQuery();



while(r.next())
{
%>
									<tr class="alert" role="alert">
										<td><%=r.getString(1)%></td>
										<td><%=r.getString(2)%></td>
										<td><%=r.getString(3)%></td>
										<td><%=r.getString(6) %></td>
										<td><%=r.getString(5)%></td>
										<td>
		                  <a class="btn btn-success" href="jspUpd.jsp?id=<%=r.getString(1)%>">Accepted</a>						
										<br>
										
										</br>
										
										</td>
										
										</tr>
<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

									
							</table>
						
						</form>
						<div class="container my-3 bg-light">
							<div class="col-md-12 text-center">
								<!-- <form action="paymentProcss.jsp">  -->
								<!-- </form>	 -->
							</div>
						</div>
						<!--  </form> -->
						<!--  </form>	 -->
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
</html>

 --%>
 
 
 
 
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<style>

@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
	  transition-duration: 0.4s;
	  transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}



.table-wrap {
    overflow-x: scroll;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="Admin_cusOrd.jsp" class="btn btn-outline-secondary"
		style="position: relative">Back</a>

<h1>Upload Client Process Request</h1>
<!-- <h2><a href="" target="_blank"></a></h2> -->
<form action="Updacceptcus_ord.jsp">

<table class="container">

	<thead>
		<tr>
			                 <th>Id</th>
										<th>BrandName</th>
										<th>BrandMail</th>
                                        <th>Deal</th>
                                        <th>UploadStatus</th>          
										<th>status</th>
						      
		</tr>
	</thead>
	<tbody>
	<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
	String ss="select * from customerorderlogin";	
  ResultSet r=con.prepareStatement(ss).executeQuery();



while(r.next())
{
%>
	
	
		<tr>
			<td><%=r.getString(1)%></td>
										<td><%=r.getString(2)%></td>
										<td><%=r.getString(3)%></td>
										<td><%=r.getString(6) %></td>
										<td><%=r.getString(5)%></td>
										<td>
		                  <a class="btn btn-success" href="jspUpd.jsp?id=<%=r.getString(1)%>">Accepted</a>						
										<br>
										
										</br>
										
										</td>
												</tr>
		
	

	<% }%>
</tbody>
</table>
</form>
						
						
						
						<% }
						catch(Exception e)
						{
						e.printStackTrace();
						}%>
</body>
</html>