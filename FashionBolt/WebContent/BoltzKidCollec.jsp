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


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Elite Shoppy an Ecommerce Online Shopping Category Flat
	Bootstrap Responsive Website Template |Men's :: w3layouts</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--//tags -->
<link href="boltzmod/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="boltzmod/css/jquery-ui.css">
<link href="boltzmod/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="boltzmod/css/font-awesome.css" rel="stylesheet">
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body>

	<%
		String namemale = "kids";
	%>
	<!-- banner-bootom-w3-agileits -->
	<%
		String BrandName = null, Details = null, Size1 = null, Size2 = null, Size3 = null, Size4 = null, MRP = null,
				SellPrice = null, ProductId = null, Discount = null, Category = null, Gender = null, Image = null,
				Sleeves = null, Wear = null, Quantity = null, TotQun = null, ExpDate = null;

		String Disprice = null, Offer = null;
		int Calprice = 0;
		int Cal = 0, a = 0;
		float cc = 0, ab = 0, calcution = 0, f = 0;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
			String query = "select * from update_boltzorder where Gender='" + namemale + "'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
	%>



	<!-- header -->
	<!-- <div class="header" id="home">
	<div class="container">
		<ul>
		    <li> <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i>  </a></li>
			<li> <a href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> </a></li>
			<li><i class="fa fa-phone" aria-hidden="true"></i> Call : 01234567898</li>
			<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>
		</ul>
	</div>
</div> -->
	<!-- //header -->
	<!-- header-bot -->
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<!-- <div class="col-md-4 header-middle">
			<form action="#" method="post">
					<input type="search" name="search" placeholder="Search here..." required="">
					<input type="submit" value=" ">
				<div class="clearfix"></div>
			</form>
		</div> -->
			<!-- header-bot -->
			<div class="col-md-4 logo_agile">
				<h1>
					<a href="index.html"><span>Boltz</span>Fashion<i
						class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a>
				</h1>
			</div>
			<!-- header-bot -->

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner -->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item"><a class="menu__link"
									href="Bolthomepage.jsp">Home <span class="sr-only">(current)</span></a></li>
							<!-- 	<li class=" menu__item"><a class="menu__link"
									href="about.html">shipping status</a></li> -->
								<li class="dropdown menu__item menu__item--current"><a
									href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
									 role="button" aria-haspopup="true"
									aria-expanded="false">Men's wear <span class="caret"></span></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<!-- <div class="col-sm-6 multi-gd-img1 multi-gd-text ">
												<a href="mens.html"><img src="boltzmod/images/top2.jpg"
													alt=" " /></a>
											</div> -->
											<!-- <div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="mens.html">shirts</a></li>
													<li><a href="mens.html">jeans</a></li>
													<li><a href="mens.html">T-shirt & polos</a></li>
													<li><a href="mens.html">casual wear</a></li>
													<li><a href="mens.html">formal wear</a></li>
													<li><a href="mens.html">coats</a></li>
													<li><a href="mens.html">Caps & Hats</a></li>
												</ul>
											</div> -->
											<!-- 	<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="mens.html">Jewe</a></li>
											<li><a href="mens.html">Sunglasses</a></li>
											<li><a href="mens.html">Perfumes</a></li>
											<li><a href="mens.html">Beauty</a></li>
											<li><a href="mens.html">Shirts</a></li>
											<li><a href="mens.html">Sunglasses</a></li>
											<li><a href="mens.html">Swimwear</a></li>
										</ul>
									</div> -->
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="dropdown menu__item"><a href="BoltzWomenCol.jsp"
									class="dropdown-toggle menu__link" 
									role="button" aria-haspopup="true" aria-expanded="false">Women's
										wear <span class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<!-- <div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="womens.html">Clothing</a></li>
													<li><a href="womens.html">Wallets</a></li>
													<li><a href="womens.html">Footwear</a></li>
													<li><a href="womens.html">Watches</a></li>
													<li><a href="womens.html">Accessories</a></li>
													<li><a href="womens.html">Bags</a></li>
													<li><a href="womens.html">Caps & Hats</a></li>
												</ul>
											</div> -->
										<!-- 	<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="womens.html">Jewellery</a></li>
													<li><a href="womens.html">Sunglasses</a></li>
													<li><a href="womens.html">Perfumes</a></li>
													<li><a href="womens.html">Beauty</a></li>
													<li><a href="womens.html">Shirts</a></li>
													<li><a href="womens.html">Sunglasses</a></li>
													<li><a href="womens.html">Swimwear</a></li>
												</ul>
											</div> -->
										<!-- 	<div class="col-sm-6 multi-gd-img multi-gd-text ">
												<a href="womens.html"><img
													src="boltzmod/images/top1.jpg" alt=" " /></a>
											</div> -->
											<div class="clearfix"></div>
										</div>
									</ul></li>
									
									<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Offer BRANDS<span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
										<%String sjmbrand="ssj_male";
						String sjwbrand="ssj_female";
						String ccmbrand="croc_male";
						String ccwbrand="croc_female";
						String vimbrand="viendia_male";
						String viwbrand="viendia_female";
						
						System.out.print("sj brand     "+sjmbrand );  					
						
						%>
											<li><a href="OthersBrand.jsp?sjbrand1=<%=sjmbrand%>">Ssj Men's</a></li>
											<li><a href="OthersBrand.jsp?sjbrand2=<%=sjwbrand%>">Ssj Women's</a></li>
											<li><a href="OthersBrand.jsp?ccbrand1=<%=ccmbrand%>">Croc Men's</a></li>
											<li><a href="OthersBrand.jsp?ccbrand2=<%=ccwbrand%>">Croc Women's</a></li>
											<li><a href="OthersBrand.jsp?vibrand1=<%=vimbrand%>">Viendia Men's</a></li>
											<li><a href="OthersBrand.jsp?vibrand2=<%=viwbrand%>">Viendia Women's</a></li>
											
										</ul>
									
									</div>
												</div>
							</ul>
					</li>
					
									
									
								<!-- <li class="menu__item dropdown"><a class="menu__link"
									href="OthersBrand.jsp" class="dropdown-toggle" >Brand
										Offers<b class="caret"></b>
								</a> 	<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul></li> -->
								<!-- 	<li class=" menu__item"><a class="menu__link" href="contact.html">Contact</a></li> -->
							</ul>
						</div>
					</div>
				</nav>
			</div>

			<div class="top_nav_right">
				<div class="wthreecartaits wthreecartaits2 cart cart box_1">

					<form action="boltzordershopping.jsp" method="post" class="last">
						<input type="hidden" name="cmd" value="_cart"> <input
							type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value="">
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
						</button>
					</form>

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-top -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign In <span>Now</span>
						</h3>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>Email</label>
								<span></span>
							</div>
							<input type="submit" value="Sign In">
						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a href="#" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<p>
							<a href="#" data-toggle="modal" data-target="#myModal2">
								Don't have an account?</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="boltzmod/images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign Up <span>Now</span>
						</h3>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required=""> <label>Password</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="Confirm Password" required="">
								<label>Confirm Password</label> <span></span>
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a href="#" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="boltzmod/images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- /banner_bottom_agile_info -->
	<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>
				Kid's <span>Wear </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="index.html">Home</a><i>|</i></li>
						<li>kids's Wear</li>
					</ul>
				</div>
			</div>
			<!--//w3_short-->
		</div>
	</div>



	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<!-- mens -->
			<div class="col-md-4 products-left">
				<div class="filter-price">
					
				
				</div>
	
						<!-- <li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Gender</label>
						<ul>
						<ul class="tree-list-pad">
					<li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Discount</label>
						<ul>
						<ul class="tree-list-pad">
					<li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Occasion</label>
						<ul>
						 -->
						
						<!--
							<li><input type="checkbox"  id="item-0-1" /><label for="item-0-1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Party Wear</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Caps</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
									<li><a href="mens.html">Trousers</a></li>
								</ul>
							</li>
							<li><input type="checkbox"  id="item-0-2" /><label for="item-0-2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Casual Wear</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Caps</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
									<li><a href="mens.html">Trousers</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><input type="checkbox" id="item-1" checked="checked" /><label for="item-1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Best Collections</label>
						<ul>
							<li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> New Arrivals</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
								</ul>
							</li>
							
						</ul>
					</li>
					<li><input type="checkbox" checked="checked" id="item-2" /><label for="item-2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Best Offers</label>
						<ul>
							<li><input type="checkbox"  id="item-2-0" /><label for="item-2-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Summer Discount Sales</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
								</ul>
							</li>
							<li><input type="checkbox" id="item-2-1" /><label for="item-2-1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Exciting Offers</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
								</ul>
							</li>
							<li><input type="checkbox" id="item-2-2" /><label for="item-2-2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Flat Discounts</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
								</ul>
							</li>
						</ul>
					</li> -->
					
				<!-- 	<div class="community-poll">
				<h4>Community Poll</h4>
				<div class="swit form">	
					<form>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" checked=""><i></i>More convenient for shipping and delivery</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Lower Price</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Track your item</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Bigger Choice</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>More colors to choose</label> </div></div>	
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Secured Payment</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Money back guaranteed</label> </div></div>	
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Others</label> </div></div>		
					<input type="submit" value="SEND">
					</form>
				</div>
			</div> -->
				<div class="clearfix"></div>
			</div>
			<div class="col-md-8 products-right">
			

				<div class="men-wear-top">

					<div id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li><img class="img-responsive"
								src="boltzmod/images/kh.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="boltzmod/images/kh1.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="boltzmod/images/kh3.jpg" alt=" " /></li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="men-wear-bottom">
					<div class="col-sm-4 men-wear-left">
						<img class="img-responsive" src="boltzmod/images/kh4.jpg" alt=" " />
					</div>
					<div class="col-sm-8 men-wear-right">
						<h4>
							Kids Wear <span>Collection</span>
						</h4>
						<p></p>
					</div>
					<div class="clearfix"></div>
				</div>
				<%
					while (rs.next()) {
						ProductId = rs.getString(1);
							BrandName = rs.getString(2);
							Details = rs.getString(3);
							Size1 = rs.getString(4);
							Size2 = rs.getString(5);
							Size3 = rs.getString(6);
							Size4 = rs.getString(7);
							Discount = rs.getString(10);
							MRP = rs.getString(8);

							char[] ch = MRP.toCharArray();
							int i = 0;
							String nPrice = "";
							while (i < ch.length) {

								if (!Character.isAlphabetic(ch[i]) && (ch[i] >= '0' && ch[i] <= '9')) {
									nPrice = nPrice + ch[i];
									i++;
								} else {
									i++;
								}
							}
							//System.out.println("nPrice"+"    "+nPrice);
							Offer = Discount;

							char[] ch1 = Offer.toCharArray();
							int j = 0;
							String nOffer = "";
							while (j < ch1.length) {
								if ((ch1[j] >= '0' && ch1[j] <= '9') && ch1[j] != '%') {
									nOffer = nOffer + ch1[j];
									j++;

								} else {
									j++;
								}
							}
							// System.out.println("nOffer"+"    "+nOffer);
							Cal = Integer.parseInt(nPrice);
							cc = Cal;
							System.out.println("Cal" + "    " + Cal);
							a = Integer.parseInt(nOffer);
							System.out.println("a" + "    " + a);
							ab = a;

							System.out.println("ab" + "    " + ab);
							f = (ab / 100);
							System.out.println("f" + "    " + f);

							calcution = (Cal * f);
							System.out.println("calculation" + "  " + calcution);
							Calprice = (int) (Cal - calcution);
							System.out.println("Calprice" + "      " + Calprice);

							Disprice = Integer.toString(Calprice);

							SellPrice = rs.getString(9);

							Category = rs.getString(11);
							Gender = rs.getString(12);
							System.out.println("Gender" + "    " + Gender);
							Sleeves = rs.getString(13);
							Image = rs.getString(14);
							Wear = rs.getString(15);
							Quantity = rs.getString(16);
							TotQun = rs.getString(17);
							ExpDate = rs.getString(18);
				%>

				<div class="col-md-4 product-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img data-enlargable src="<%=Image%>" alt="" border=3
								height=300px width=300px class="pro-image-front"> <img
								data-enlargable src="<%=Image%>" alt="" border=3 height=300px
								width=300px alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="#" class="link-product-add-cart">Quick
										View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
									<div class="item-info-product ">
														<h4> <a href="#"><%=BrandName%></a> <br></br><label><%=BrandName %></label></h4>
														<div class="info-product-price">
															
															<del><%=MRP%></del>
															<span class="item_price"><%=Discount%></span><br></br>
															
															<span class="item_price">Rs <%=Disprice%></span>
															
										
														<!-- 	<label>Quantity</label>
															<input type="text" name="qn"   min="1" max="100" >
														<input type="number" name="qtn" value="1"> -->
														</div>
															<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
																		<form action="BoltzKidCol_DB.jsp" method="post" >	
																		Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
																				 <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2"> 
														
																				<fieldset>
																				<!-- 	<input type="hidden" name="add" value="1"> -->
																			<input type="hidden" name="item_nameId3" value=<%=ProductId%>>
																					<input type="hidden" name="item_name" value=<%=BrandName%>>
																					<input type="hidden" name="amount" value="<%=Disprice%>">
																					<input type="hidden" name="discount" value="<%=Discount%>">
																				  <input type="hidden" name="imagee" value="<%=Image%>"> 
																				<%--  <input type="hidden" name="qtn" value=<%=Quantity%> > --%>
																				<input type="hidden" name="size1" value=<%=rs.getString(4)%>>
																				<input type="hidden" name="size2" value=<%=rs.getString(5)%>>
																				<input type="hidden" name="size3" value=<%=rs.getString(6)%>>
																				<input type="hidden" name="size4" value=<%=rs.getString(7)%>>
																			<input type="hidden" name="gen" value=<%=rs.getString(12)%>>
																			<input type="hidden" name="lamt" value=<%=Disprice %>>
																				</fieldset>
																				
																			<input type="submit"  name="submit"   value="Add to cart"  class="button">
																		</div>
																		</form>
	
																							
													</div>
					</div>
				</div>
				<%
					}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

				<%-- 					
			<div class="col-md-4 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src=<%=rs.getString(11)%><img data-enlargable width="100" src=<%=Image%>  alt="" border=3 height=100 width=300 alt="" class="pro-image-front">
										
										<img src="" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="#" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
										
		
									
									
									<div class="item-info-product ">
										<h4><a href="single.html"><%=BrandName %>></a></h4>
										<div class="info-product-price">
											<span class="item_price"><%=MRP%>></span>
											<del>$290.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart">
																	<input type="hidden" name="add" value="1">
																	<input type="hidden" name="business" value=" ">
																	<input type="hidden" name="item_name" value="Analog Watch">
																	<input type="hidden" name="amount" value="30.99">
																	<input type="hidden" name="discount_amount" value="1.00">
																	<input type="hidden" name="currency_code" value="USD">
																	<input type="hidden" name="return" value=" ">
																	<input type="hidden" name="cancel_return" value=" ">
																	<input type="submit" name="submit" value="Add to cart" class="button">
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
			<div class="col-md-4 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/s1.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/s1.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Running Shoes</a></h4>
										<div class="info-product-price">
											<span class="item_price">$80.99</span>
											<del>$89.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart">
																	<input type="hidden" name="add" value="1">
																	<input type="hidden" name="business" value=" ">
																	<input type="hidden" name="item_name" value="Running Shoes">
																	<input type="hidden" name="amount" value="30.99">
																	<input type="hidden" name="discount_amount" value="1.00">
																	<input type="hidden" name="currency_code" value="USD">
																	<input type="hidden" name="return" value=" ">
																	<input type="hidden" name="cancel_return" value=" ">
																	<input type="submit" name="submit" value="Add to cart" class="button">
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
				
				<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
		
		<div class="single-pro">
			<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m1.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m1.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Formal Blue Shirt</a></h4>
										<div class="info-product-price">
											<span class="item_price">$45.99</span>
											<del>$69.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Formal Blue Shirt" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m2.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m2.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Gabi Full Sleeve Sweatshirt</a></h4>
										<div class="info-product-price">
											<span class="item_price">$45.99</span>
											<del>$69.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Sweatshirt" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
                            <div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m3.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m3.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Dark Blue Track Pants</a></h4>
										<div class="info-product-price">
											<span class="item_price">$80.99</span>
											<del>$89.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Dark Blue Track Pants" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m4.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m4.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Round Neck Black T-Shirt</a></h4>
										<div class="info-product-price">
											<span class="item_price">$190.99</span>
											<del>$159.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Black T-Shirt" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m5.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m5.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Men's Black Jeans</a></h4>
										<div class="info-product-price">
											<span class="item_price">$60.99</span>
											<del>$90.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Men's Black Jeans" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
								<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m7.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m7.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Analog Watch</a></h4>
										<div class="info-product-price">
											<span class="item_price">$160.99</span>
											<del>$290.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Analog Watch" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
								<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="boltzmod/images/m6.jpg" alt="" class="pro-image-front">
										<img src="boltzmod/images/m6.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Reversible Belt</a></h4>
										<div class="info-product-price">
											<span class="item_price">$30.99</span>
											<del>$50.71</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Reversible Belt" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
								<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="<%=Image%>>" alt="" class="pro-image-front">
										<img src="WebContent/img_ord/casual l wear/c1.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html"><%=BrandName%>></a></h4>
										<div class="info-product-price">
											<span class="item_price"><%=MRP%>></span>
											<del><%=Discount %>></del>
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																<fieldset>
																	<input type="hidden" name="cmd" value="_cart" />
																	<input type="hidden" name="add" value="1" />
																	<input type="hidden" name="business" value=" " />
																	<input type="hidden" name="item_name" value="Party Men's Blazer" />
																	<input type="hidden" name="amount" value="30.99" />
																	<input type="hidden" name="discount_amount" value="1.00" />
																	<input type="hidden" name="currency_code" value="USD" />
																	<input type="hidden" name="return" value=" " />
																	<input type="hidden" name="cancel_return" value=" " />
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
		</div> --%>


			</div>
		</div>
		<!-- //mens -->
		<!--/grids-->
	<!-- 	<div class="coupons">
			<div class="coupons-grids text-center">
				<div class="w3layouts_mail_grid">
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<i class="fa fa-truck" aria-hidden="true"></i>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>FREE SHIPPING</h3>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<i class="fa fa-headphones" aria-hidden="true"></i>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>24/7 SUPPORT</h3>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>MONEY BACK GUARANTEE</h3>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
						</div>
					</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<i class="fa fa-gift" aria-hidden="true"></i>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>FREE GIFT COUPONS</h3>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>

			</div>
		</div> -->
		<!--grids-->
		<!-- footer -->
		<div class="footer">
			<div class="footer_agile_inner_info_w3l">
				<div class="col-md-3 footer-left">
					<h2>
						<a href="index.html"><span>Boltz E</span>lite Shoppy </a>
					</h2>
					<p>A typical online store enables the customer to browse the firm's range of products and services, view photos or images of the products, along with information about the product specifications, features and prices. Online stores usually enable shoppers to use "search" features to find specific models, brands or items..</p>
					<ul class="social-nav model-3d-0 footer-social w3_agile_social two">
						<!-- <li><a href="#" class="facebook">
								<div class="front">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</div>
						</a></li>
						<li><a href="#" class="twitter">
								<div class="front">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</div>
						</a></li>
						<li><a href="#" class="instagram">
								<div class="front">
									<i class="fa fa-instagram" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-instagram" aria-hidden="true"></i>
								</div>
						</a></li>
						<li><a href="#" class="pinterest">
								<div class="front">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</div>
						</a></li> -->
					</ul>
				</div>
				<div class="col-md-9 footer-right">
					<div class="sign-grds">
						<div class="col-md-4 sign-gd">
							<h4>
								Our <span>Information</span>
							</h4>
							<ul>
								<li><a href="Bolthomepage.jsp">Home</a></li>
						<li><a href="BoltzWomenCol.jsp">Men's Wear</a></li>
						<li><a href="BoltzMenColl.jsp">Women's wear</a></li>
						<li><a href="BoltzKidCollec.jsp">Kid'sWear</a></li>
							</ul>
						</div>

				<!-- 		<div class="col-md-5 sign-gd-two">
							<h4>
								Store <span>Information</span>
							</h4>
							<div class="w3-address">
								<div class="w3-address-grid">
									<div class="w3-address-left">
										<i class="fa fa-phone" aria-hidden="true"></i>
									</div>
									<div class="w3-address-right">
										<h6>Phone Number</h6>
										<p>+1 234 567 8901</p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="w3-address-grid">
									<div class="w3-address-left">
										<i class="fa fa-envelope" aria-hidden="true"></i>
									</div>
									<div class="w3-address-right">
										<h6>Email Address</h6>
										<p>
											Email :<a href="mailto:example@email.com">
												mail@example.com</a>
										</p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="w3-address-grid">
									<div class="w3-address-left">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
									</div>
									<div class="w3-address-right">
										<h6>Location</h6>
										<p>Broome St, NY 10002,California, USA.</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div> -->
						<div class="col-md-3 sign-gd flickr-post">
							<h4>
								Flickr <span>Posts</span>
							</h4>
							<ul>
								<li><a href="single.html"><img
										src="boltzmod/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
								<li><a href="single.html"><img
										src="boltzmod/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
				<!-- <div class="agile_newsletter_footer">
					<div class="col-sm-6 newsleft">
						<h3>SIGN UP FOR NEWSLETTER !</h3>
					</div>
					<div class="col-sm-6 newsright">
						<form action="#" method="post">
							<input type="email" placeholder="Enter your email..."
								name="email" required=""> <input type="submit"
								value="Submit">
						</form>
					</div>

					<div class="clearfix"></div>
				</div> -->
			<!-- 	<p class="copy-right">
					&copy 2017 Elite shoppy. All rights reserved | Design by <a
						href="http://w3layouts.com/">W3layouts</a>
				</p> -->
			</div>
		</div>
		<!-- //footer -->

		<!-- login -->
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-info">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body modal-spa">
						<div class="login-grids">
							<div class="login">
								<div class="login-bottom">
									<h3>Sign up for free</h3>
									<form>
										<div class="sign-up">
											<h4>Email :</h4>
											<input type="text" value="Type here"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Type here';}"
												required="">
										</div>
										<div class="sign-up">
											<h4>Password :</h4>
											<input type="password" value="Password"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Password';}"
												required="">

										</div>
										<div class="sign-up">
											<h4>Re-type Password :</h4>
											<input type="password" value="Password"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Password';}"
												required="">

										</div>
										<div class="sign-up">
											<input type="submit" value="REGISTER NOW">
										</div>

									</form>
								</div>
								<div class="login-right">
									<h3>Sign in with your account</h3>
									<form>
										<div class="sign-in">
											<h4>Email :</h4>
											<input type="text" value="Type here"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Type here';}"
												required="">
										</div>
										<div class="sign-in">
											<h4>Password :</h4>
											<input type="password" value="Password"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Password';}"
												required=""> <a href="#">Forgot password?</a>
										</div>
										<div class="single-bottom">
											<input type="checkbox" id="brand" value=""> <label
												for="brand"><span></span>Remember Me.</label>
										</div>
										<div class="sign-in">
											<input type="submit" value="SIGNIN">
										</div>
									</form>
								</div>
								<div class="clearfix"></div>
							</div>
							<p>
								By logging in you agree to our <a href="#">Terms and
									Conditions</a> and <a href="#">Privacy Policy</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //login -->
		<a href="#home" class="scroll" id="toTop" style="display: block;">
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
		<!-- js -->
		<script type="text/javascript" src="boltzmod/js/jquery-2.1.4.min.js"></script>
		<!-- //js -->
		<script src="boltzmod/js/responsiveslides.min.js"></script>
		<script>
			// You can also use "$(window).load(function() {"
			$(function() {
				// Slideshow 4
				$("#slider3").responsiveSlides({
					auto : true,
					pager : true,
					nav : false,
					speed : 500,
					namespace : "callbacks",
					before : function() {
						$('.events').append("<li>before event fired.</li>");
					},
					after : function() {
						$('.events').append("<li>after event fired.</li>");
					}
				});
			});
		</script>
		<script src="boltzmod/js/modernizr.custom.js"></script>
		<!-- Custom-JavaScript-File-Links -->
		<!-- cart-js -->
		<script src="boltzmod/js/minicart.min.js"></script>
		<script>
			// Mini Cart
			paypal.minicart.render({
				action : '#'
			});

			if (~window.location.search.indexOf('reset=true')) {
				paypal.minicart.reset();
			}
		</script>

		<!-- //cart-js -->
		<!---->


















		<script type='text/javascript'>
			//<![CDATA[ 
			$(window).load(
					function() {
						$("#slider-range").slider(
								{
									range : true,
									min : 0,
									max : 9000,
									values : [ 1000, 7000 ],
									slide : function(event, ui) {
										$("#amount").val(
												"$" + ui.values[0] + " - $"
														+ ui.values[1]);
									}
								});
						$("#amount").val(
								"$"
										+ $("#slider-range")
												.slider("values", 0)
										+ " - $"
										+ $("#slider-range")
												.slider("values", 1));

					});//]]>
		</script>
		<script type="text/javascript" src="boltzmod/js/jquery-ui.js"></script>
		<!---->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="boltzmod/js/move-top.js"></script>
		<script type="text/javascript" src="boltzmod/js/jquery.easing.min.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop : $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<!-- here stars scrolling icon -->
		<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
		<!-- //here ends scrolling icon -->

		<!-- for bootstrap working -->
		<script type="text/javascript" src="boltzmod/js/bootstrap.js"></script>
</body>
</html>

