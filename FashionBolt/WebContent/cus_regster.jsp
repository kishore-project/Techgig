<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!doctype html>
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
			<h1 class="header-w3ls">Client Register</h1>
			
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
						<form action="Cus_Reg" method="post" autocomplete="off">
							<div class="content-wthree1">
								<div class="grid-agileits1">
									<div class="form-control"> 
										<label class="header">UserName<span>*</span></label>
										<input type="text" id="name" name="name" placeholder="Name" title="Please enter your Full Name" required="">
									</div>
									<div class="form-control">	
										<label class="header">Email <span>*</span></label>
										<input type="email" id="email" name="email" placeholder="Mail@example.com" title="Please enter a Valid Email Address" required="">
									</div>
									<div class="form-control">	
										<label class="header">Password</label>
										<input type="password" id="name" name="password" placeholder="Password" title="Please enter your Phone Number" required="">
									</div>
									<div class="form-control">	
										<label class="header">cnPassword <span>*</span></label>
										<input type="password" id="name" name="cnpassword" placeholder="Confirm Password" title="Please enter your Phone Number" required="">
									</div>
									<div class="wthreesubmitaits">
									<input  onkeypress="return validateform()"  type="submit" name="submit" value="Register">
						</div>
								</div>
							</div>
					</div>
					
								
					<div class="clear"></div>
				</div>
				</form>
				</div>
				


</body>
</html>