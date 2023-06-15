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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Doctor Appointment Form Flat Responsive widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Doctor Appointment Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!-- /font files -->
<!-- css files -->
<link href="css2/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
<script type="text/javascript" src="js2/jquery-2.1.4.min.js"></script>
<script src="js2/jquery.vide.min.js"></script>
</head>
<body>
	<div data-vide-bg="video2/patient">
		<div class="center-container">
			<h1 class="header-w3ls">Boltz Register</h1>
			
			<div class="content-top">
				<div class="content-w3ls">
					<div class="form-w3ls">
							<script>  
function validateform()
{  
var email=document.myform.email.value;  
var password=document.myform.password.value;  
var cpassword=document.myform.cpassword.value
  
if (email==null || email==""){  
  alert("Name can't be blank");  
  return false;  
}else if(password.length < 6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  } 
else if(password.match(cnpassword)==null)
	{
	 alert("Password characters are not matched");  
	return false;
	}
}  
</script> 


						<form action="Boltzregs.jsp" method="post" autocomplete="off">
							<div class="content-wthree1">
								<div class="grid-agileits1">
									<div class="form-control"> 
								<center><label class="header">UserName<span>*</span></label>	</center>
										<center><input type="text" id="name" name="name" placeholder="Name" title="Please enter your Full Name" required=""></center>
								</div>
								
									<div class="form-control">	
										<label class="header">Email <span>*</span></label>
										<input type="email" id="email" name="email" placeholder="Mail@example.com" title="Please enter a Valid Email Address" required="">
										
									</div>
									<%-- <%
										String em = request.getParameter("email");
										session.setAttribute("toemail", em); 
										System.out.println(em);
										
										%> --%>
									<div class="form-control">	
										<label class="header">Password</label>
										<input type="password" id="name" name="password" placeholder="Password" title="Please enter your Phone Number" required="">
									</div>
									<div class="form-control">	
										<label class="header">Confirm Password <span>*</span></label>
										<input type="password" id="name" name="cnpassword" placeholder="Confirm Password" title="Please enter your Phone Number" required="">
									</div>
									
									<div class="wthreesubmitaits">
									<input type="submit"  name="submit" value="Register">
						</div>
								</div>
							</div>
					</div>
					
								
					<div class="clear"></div>
				</div>
				
				</form>
	
			
				


</body>
</html>