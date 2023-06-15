<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Form-v10 by Colorlib</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="part_assertscss/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="part_asserts/css/style.css"/>
</head>
<body class="form-v10">
	<div class="page-content">
		<div class="form-v10-content">
		
		
		
		<%
		String ss=request.getParameter("st");
		String s2=request.getParameter("ht");
		if(ss.equalsIgnoreCase("Start-Up"))
		{
		%>
			<form class="form-detail" action="startup_regval.jsp" method="post" id="myform">
				<div class="form-left">
					<h2>	Region</h2>
					
					
					
					
					
					
					
						<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="first_name" id="first_name" class="input-text" placeholder="First Name" required>
						</div>
						<div class="form-row form-row-2">
							<input type="text" name="last_name" id="last_name" class="input-text" placeholder="Last Name" required>
						</div>
					</div>
					<div class="form-row">
						<select name="area">
						 <option disabled="disabled" selected="selected">Shop Region
                                            </option>
						
						  <option value="ennore"> ennore  </option>
                                            <option value="ennore"> ernavor
                                            </option>
                                            <option> thiruvotriyur
                                            </option>
                                             <option> thiruvanmiyur
                                              </option>
                                            <option> manali
                                            </option>
                                            <option>Manali New town
                                            </option>
                                            
                                             <option> Kasimedu
                                               </option>
                                            <option>Royapuram
                                             
                                            </option>
                                            <option>Mint Street
                                            
                                            </option>
                                            
                                             <option>Washermenpet
                                              </option>
                                            <option>Madhavaram
                                            
                                            
                                            </option>
                                            <option> Minjur
                                            
                                            
                                            </option>
                                            
                                             <option> Velachery
                                               </option>
                                            <option>  Tondiarpet
                                            </option>
                                            <option> Perambur</option>
                                            
                                             <option> Ponneri  </option>
                                            <option> Parrys Corner </option>
                                            <option>Anna nagar</option>
                                            
                                             <option>Ashok nagar </option>
                                            <option>Guindy</option>
                                            <option>Washermenpet</option>
                                            
                                             <option> Madhavaram
                                              </option>
                                            <option>Vadapalani
                                            </option>
                                            <option>Ekkatuthangal
                                            </option>
                                               <option>  Kilpauk
                                                 </option>
                                            <option> Arumbakam
                                            </option>
                                            <option> Tamabaram
                                            </option>
                                               <option>   Chrompet
                                               </option>
                                            <option>Pallavaram
                                            </option>
                                            <option>Kodamabakam
                                            </option>
                                            
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
				
					<div class="form-row">
						<textarea rows="4" cols="50" name="deatil"placeholder="Detailed Shop Address"></textarea>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					
					<div class="form-group">
						<div class="form-row form-row-3">
							<input type="text" name="ppq" class="business" id="business" placeholder="PricePerQuantity" required>
						</div>
						
						
						<div class="form-row form-row-4">
						<input type="text" name="Totqun" class="business" id="business" placeholder="Quantity" required>
						<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
						
						
						
						<!-- <div class="form-row form-row-4">
							<select name="employees">
							    <option value="employees">Employees</option>
							    <option value="trainee">Trainee</option>
							    <option value="colleague">Colleague</option>
							    <option value="associate">Associate</option>
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div> -->
						
						
						
					</div>
				</div>
				<div class="form-right">
					<h2>Fashion Product Detailed</h2>
					<div class="form-row">
						<input type="files" name="shopname" class="street" id="street" placeholder="ShopName" required>
					</div>
					<div class="form-row">
					
		<!-- 			  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1">Suit</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="suits">
  <label for="vehicle2">CasualWear</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="casualwear">
  <label for="vehicle3">T-shirt</label><br><br>
  <input type="checkbox" id="vehicle4" name="vehicle4" value="t-shirt">
					 -->
						<input type="text" name="quality" class="additional" id="additional" placeholder="quality" required>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<!-- <input type="text" name="zip" class="zip" id="zip" placeholder="Zip Code" required> -->
<select name="clothes">
							   <option disabled="disabled" selected="selected">Clothes
                                            </option>
						                    <option value="suits">Suits</option>
                                            <option value="casualwear">CasualWear</option>
                                            <option value="t-shirt">T-Shirts</option>
                                            <option value="formalwear">FormalWear</option>
                                         
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
							
							
						</div>
						<div class="form-row form-row-2">
							<select name="season">
							   <option disabled="disabled" selected="selected">Season
                                            </option>
						                    <option value="winter">WINTER</option>
                                            <option value="summer">SUMMMER</option>
                                            <option value="rainy">RAINY</option>
                                            <option value="sunny">SUNNY</option>
                                            <option value="authmn">AUTHMN</option>
                                           
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="form-row">
						<select name="size">
					<option disabled="disabled" selected="selected">Size
                                            </option>
						    <option value="Vietnam">32</option>
						    <option value="India">34</option>
						    <option value="Malaysia">36</option>
						    <option value="India">38</option>
						    
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					
					<div class="form-row">
						<select name="bussplan">
						   <option disabled="disabled" selected="selected">BusinessPlan
                                            </option>
			    <option value="Vietnam">Start-up</option>
						    <option value="Malaysia">Business</option>
									</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					
					
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="orgprice" class="code" id="code" placeholder="TotalPrice" required>
						</div>
						<div class="form-row form-row-2">
							<input type="email" name="your_mail" class="phone" id="phone" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Email" required >
						</div>
					</div>
					<div class="form-row">
						<input type="date" name="dat" id="your_email" class="input-text" placeholder="Upd Date">
					</div>
					<!-- <div class="form-checkbox">
						<label class="container"><p><a href="#" class="text"></a> </p>
						  	<input type="date" name="dat">
						  	<span class="checkmark"></span>
						</label>
					</div> -->
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="submit">
					</div>
				</div>
			</form>
			<%}
		%>
			
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>