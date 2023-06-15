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

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title></title>
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
List l=new ArrayList();
String BrandName=null,Size1=null,Size2=null,Size3=null,Size4=null,MRP=null,SellPrice=null,ProductId=null,Discount=null,Category=null,Gender=null,Image=null,Sleeves=null,Wear=null,Quantity=null,TotQun=null,ExpDate=null;
int lcal;	String ClothName=null;
  
	String Disprice=null,Offer=null;int Calprice=0; int Cal=0 ,a=0;	float cc=0,ab=0,calcution=0,f=0;
  try	{
		
										Class.forName("com.mysql.jdbc.Driver");
										Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");											
										String query="select * from productorreq where Deal='closed'";
			                           ResultSet am=con.prepareStatement(query).executeQuery();
									while(am.next())
									{
										
										 l.add(am.getString("brandname").toLowerCase());		 
									}
									
						System.out.print("brandname"+"     "+l); 
  }
  catch(Exception e)
  {
	  e.printStackTrace();
									
  }						
					%>


	<%
	String ssjMensBrand=request.getParameter("sjbrand1");
	String ssjFBrand=request.getParameter("sjbrand2");
	String crocMBrand=request.getParameter("ccbrand1");
	String crocFBrand=request.getParameter("ccbrand2");	
	String vijMBrand=request.getParameter("vibrand1");
	String vijFBrand=request.getParameter("vibrand2");
	String[]crocm=null;
	String[]crocf=null;
	String[]ssj=null;
	String[]ssjf=null;
	String[]vijm=null;
	String[]vijf=null;
	
	if(ssjMensBrand!=null)
	{
		
		ssj=ssjMensBrand.split("_");
	}
	
	
	else if(ssjFBrand!=null)
	{
	
		ssjf=ssjFBrand.split("_"); 
	}
	
	else if(crocMBrand!=null)
	{
		
		/* String c2=request.getParameter("cc"); */
		crocm=crocMBrand.split("_");
		System.out.print("crocm[0]                             "+crocm[0]  + "                         crocm[1]                             "+crocm[1]  );
	}	
	else if(crocFBrand!=null)
	{
		
		crocf=crocFBrand.split("_"); 
	}
	/*  System.out.print("crocm[0]                             "+crocm[0]  + "                         crocm[1]                             "+crocm[1]  ); */
	
	
	else if(vijMBrand != null)
	{

		vijm=vijMBrand.split("_");
	}
	else if(vijFBrand !=null)
	{
	
		vijf=vijFBrand.split("_");
	}

	/* String ssjBrand=request.getParameter("sjbrand1");
	String ssjBrand=request.getParameter("sjbrand1"); */

	
	%>
	
	<% 
	
  if(crocMBrand!=null)		
 {
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
									<!-- <li class=" menu__item"><a class="menu__link"
										href="about.html">shipping status</a></li> -->
									<li class="dropdown menu__item menu__item--current"><a
										href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
										 role="button" aria-haspopup="true"
										aria-expanded="false">Men's wear <span class="caret"></span></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="agile_inner_drop_nav_info">
												<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
													<a href="mens.html"><img src="boltzmod/images/top2.jpg"
														alt=" " /></a>
												</div>
											
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
										class="dropdown-toggle menu__link" data-toggle="dropdown"
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
												<!-- <div class="col-sm-3 multi-gd-img">
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
												<div class="col-sm-6 multi-gd-img multi-gd-text ">
													<a href="womens.html"><img
														src="boltzmod/images/top1.jpg" alt=" " /></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul></li>
									<li class="menu__item dropdown"><a class="menu__link"
										href="BoltzKidCollec.jsp" class="dropdown-toggle" data-toggle="dropdown">kids
											Wear<b class="caret"></b>
									</a> <!-- 	<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="typography.html">Typography</a></li>
									</ul> --></li>
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
								<a href="#"></a>
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
					Men's and Women's<span>Wear </span>
				</h3>
				<!--/w3_short-->
				<div class="services-breadcrumb">
					<div class="agile_inner_breadcrumb">

						<ul class="w3_short">
							<li><a href="index.html">Home</a><i>|</i></li>
							<li>Men's Wear</li>
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
						
						<ul class="dropdown-menu6">
							<li>
								<div id="slider-range"></div> <input type="text" id="amount"
								style="border: 0; color: #ffffff; font-weight: normal;" />
							</li>
						</ul>
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
									src="boltzmod/images/banner2.jpg" alt=" " /></li>
								<li><img class="img-responsive"
									src="boltzmod/images/banner5.jpg" alt=" " /></li>
								<li><img class="img-responsive"
									src="boltzmod/images/banner2.jpg" alt=" " /></li>

							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="men-wear-bottom">
						<div class="col-sm-4 men-wear-left">
							<img class="img-responsive" src="boltzmod/images/bb2.jpg" alt=" " />
						</div>
						<div class="col-sm-8 men-wear-right">
							<h4>
								Mens Wear & Womens Wear<span>Collection</span>
							</h4>
							<p></p>
						</div>
						<div class="clearfix"></div>
					</div>
<%
	
		if(l.contains(crocm[0]))
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");								
	String gg="select * from crocproduct where BrandName='"+crocm[0]+"'and Gender='"+crocm[1]+"'";
	ResultSet rs=con.prepareStatement(gg).executeQuery();			
	while (rs.next()) {
		ProductId = rs.getString(1);
		BrandName = rs.getString(2);
		System.out.println("nbjssssssssssssssk                     "+BrandName);
		Size1 = rs.getString(3);
		Size2 = rs.getString(4);
		Size3 = rs.getString(5);
		Size4 = rs.getString(6);
        Gender=rs.getString(7);
		MRP = rs.getString(9);
 ClothName=rs.getString(20);
		SellPrice = rs.getString(11);
		Discount = rs.getString(10);

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
		Calprice = (int) calcution;
		
		
		System.out.println("Calprice" + "      " + Calprice);
		lcal=Cal-Calprice;
		Disprice = Integer.toString(lcal);

		Category = rs.getString(13);
		Gender = rs.getString(7);
		Sleeves = rs.getString(14);
		Image = rs.getString(15);
		System.out.println("quantit img" + "     " + Image);
		Wear = rs.getString(12);
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
							<a href="single.html" class="link-product-add-cart">Quick
								View</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
					<a href="#"><%=BrandName%></a> 
					<br></br>
						<label><%=BrandName %>  <%=ClothName%></label>
					</h4>
					<div class="info-product-price">

						<del><%=MRP%></del>
						<span class="item_price"><%=Discount%> <%=Gender %></span><br></br> <span
							class="item_price">Rs <%=Disprice%></span>


						<!-- 	<label>Quantity</label>
													<input type="text" name="qn"   min="1" max="100" >
												<input type="number" name="qtn" value="1"> -->
					</div>
					<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<form action="OtherBrand_DB.jsp" method="post">
						Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
						<div
							class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">

																				
														
							<fieldset>
								<!-- 	<input type="hidden" name="add" value="1"> -->
								<input type="hidden" name="item_nameId" value=<%=ProductId%>>
								<input type="hidden" name="item_name" value=<%=BrandName%>>
								<input type="hidden" name="amount" value="<%=Disprice%>">
								<input type="hidden" name="discount" value="<%=Discount%>">
								<input type="hidden" name="imagee" value="<%=Image%>">
								<input type="hidden" name="imagee" value="<%=Image%>">
								<input type="hidden" name="qt" value=<%=Gender%>> 
							    <input type="hidden" name="size1" value=<%=rs.getString(3)%>>
								<input type="hidden" name="size2" value=<%=rs.getString(4)%>>
								<input type="hidden" name="size3" value=<%=rs.getString(5)%>>
								<input type="hidden" name="size4" value=<%=rs.getString(6)%>>
								<input type="hidden" name="gen" value=<%=rs.getString(12)%>>
                                <input type="hidden" name="lamt" value=<%=Disprice %>>



								<input type="submit" name="submit" value="Add to cart"
									class="button">
							</fieldset>

						</div>
					</form>


				</div>
			</div>
		</div>

		<%

	
	}
	
		 }
		
		catch(Exception ys)
		   {
			 ys.printStackTrace();
		      }
				
		}
%>
</body>
</html>
<%
 }
	
 
	
	 %>
	 
 
	 
<%
if(crocFBrand!=null )
	{
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
										<!-- <li class=" menu__item"><a class="menu__link"
											href="about.html">shipping status</a></li> -->
										<li class="dropdown menu__item menu__item--current"><a
											href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
											 role="button" aria-haspopup="true"
											aria-expanded="false">Men's wear <span class="caret"></span></a>
											<ul class="dropdown-menu multi-column columns-3">
												<div class="agile_inner_drop_nav_info">
													<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
														<a href="mens.html"><img src="boltzmod/images/top2.jpg"
															alt=" " /></a>
													</div>
													<div class="col-sm-3 multi-gd-img">
														
													</div>
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
											class="dropdown-toggle menu__link" data-toggle="dropdown"
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
													<!-- <div class="col-sm-3 multi-gd-img">
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
													<div class="col-sm-6 multi-gd-img multi-gd-text ">
														<a href="womens.html"><img
															src="boltzmod/images/top1.jpg" alt=" " /></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</ul></li>
										<li class="menu__item dropdown"><a class="menu__link"
											href="BoltzKidCollec.jsp" class="dropdown-toggle" data-toggle="dropdown">kids
												Wear<b class="caret"></b>
										</a> <!-- 	<ul class="dropdown-menu agile_short_dropdown">
											<li><a href="icons.html">Web Icons</a></li>
											<li><a href="typography.html">Typography</a></li>
										</ul> --></li>
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

			<!-- //Modal2 -->
			<!-- /banner_bottom_agile_info -->
			<div class="page-head_agile_info_w3l">
				<div class="container">
					<h3>
						Men's and Women's<span>Wear </span>
					</h3>
					<!--/w3_short-->
					<div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

							<ul class="w3_short">
								<li><a href="index.html">Home</a><i>|</i></li>
								<li>Men's Wear</li>
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
										src="boltzmod/images/banner2.jpg" alt=" " /></li>
									<li><img class="img-responsive"
										src="boltzmod/images/banner5.jpg" alt=" " /></li>
									<li><img class="img-responsive"
										src="boltzmod/images/banner2.jpg" alt=" " /></li>

								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="men-wear-bottom">
							<div class="col-sm-4 men-wear-left">
								<img class="img-responsive" src="boltzmod/images/bb2.jpg" alt=" " />
							</div>
							<div class="col-sm-8 men-wear-right">
								<h4>
									Mens Wear & Womens Wear<span>Collection</span>
								</h4>
								<p></p>
							</div>
							<div class="clearfix"></div>
						</div>
	<%
		
			if(l.contains(crocf[0]))
			{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");								
		String gg="select * from crocproduct where BrandName='"+crocf[0]+"' and Gender='"+crocf[1]+"'";
		ResultSet rs=con.prepareStatement(gg).executeQuery();			
		while (rs.next()) {
			ProductId = rs.getString(1);
			BrandName = rs.getString(2);
			System.out.println(BrandName);
			Size1 = rs.getString(3);
			Size2 = rs.getString(4);
			Size3 = rs.getString(5);
			Size4 = rs.getString(6);

			MRP = rs.getString(9);

			SellPrice = rs.getString(11);
			Discount = rs.getString(10);
			ClothName=rs.getString(20);
			
			
			
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
			Calprice = (int) calcution;
			
			
			System.out.println("Calprice" + "      " + Calprice);
			lcal=Cal-Calprice;
			Disprice = Integer.toString(lcal);

			Category = rs.getString(13);
			Gender = rs.getString(7);
			Sleeves = rs.getString(14);
			Image = rs.getString(15);
			System.out.println("quantit img" + "     " + Image);
			Wear = rs.getString(12);
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
								<a href="single.html" class="link-product-add-cart">Quick
									View</a>
							</div>
						</div>
						<span class="product-new-top">New</span>

					</div>
					<div class="item-info-product ">
						<h4>
							<a href="#"><%=BrandName%></a>
							<br></br>
							<label> <%=ClothName%></label>
						</h4>
						<div class="info-product-price">

							<del><%=MRP%></del>
							<span class="item_price"><%=Discount%></span><br></br> <span
								class="item_price">Rs <%=Disprice%></span>


							<!-- 	<label>Quantity</label>
														<input type="text" name="qn"   min="1" max="100" >
													<input type="number" name="qtn" value="1"> -->
						</div>
						<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
						<form action="OtherBrand_DB.jsp" method="post">
							
							Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">

								<fieldset>
									<!-- 	<input type="hidden" name="add" value="1"> -->
									<input type="hidden" name="item_nameId" value=<%=ProductId%>>
									<input type="hidden" name="item_name" value=<%=BrandName%>>
									<input type="hidden" name="amount" value="<%=Disprice%>">
									<input type="hidden" name="discount" value="<%=Discount%>">
									<input type="hidden" name="imagee" value="<%=Image%>">
									<input type="hidden" name="qtn" value=<%=Quantity%>> <input
										type="hidden" name="size1" value=<%=rs.getString(3)%>>
									<input type="hidden" name="size2" value=<%=rs.getString(4)%>>
									<input type="hidden" name="size3" value=<%=rs.getString(5)%>>
									<input type="hidden" name="size4" value=<%=rs.getString(6)%>>
									<input type="hidden" name="gen" value=<%=rs.getString(7)%>>




									<input type="submit" name="submit" value="Add to cart"
										class="button">
								</fieldset>

							</div>
						</form>


					</div>
				</div>
			</div>

			<%

		
		}
			 }
			catch(Exception ys)
			   {
				 ys.printStackTrace();
			      }
						}

	%>
	 </body>
	 </html>
	 <%
	}
 %>





 <%
	if(ssjMensBrand!=null)
	{
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
									<!-- <li class=" menu__item"><a class="menu__link"
										href="about.html">shipping status</a></li> -->
									<li class="dropdown menu__item menu__item--current"><a
										href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
										 role="button" aria-haspopup="true"
										aria-expanded="false">Men's wear <span class="caret"></span></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="agile_inner_drop_nav_info">
												<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
													<a href="mens.html"><img src="boltzmod/images/top2.jpg"
														alt=" " /></a>
												</div>
												
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
										class="dropdown-toggle menu__link" data-toggle="dropdown"
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
												<!-- <div class="col-sm-3 multi-gd-img">
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
												<div class="col-sm-6 multi-gd-img multi-gd-text ">
													<a href="womens.html"><img
														src="boltzmod/images/top1.jpg" alt=" " /></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul></li>
									<li class="menu__item dropdown"><a class="menu__link"
										href="BoltzKidCollec.jsp" class="dropdown-toggle" data-toggle="dropdown">kids
											Wear<b class="caret"></b>
									</a> <!-- 	<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="typography.html">Typography</a></li>
									</ul> --></li>
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
					Men's and Women's<span>Wear </span>
				</h3>
				<!--/w3_short-->
				<div class="services-breadcrumb">
					<div class="agile_inner_breadcrumb">

						<ul class="w3_short">
							<li><a href="index.html">Home</a><i>|</i></li>
							<li>Men's Wear</li>
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
									src="boltzmod/images/banner2.jpg" alt=" " /></li>
								<li><img class="img-responsive"
									src="boltzmod/images/banner5.jpg" alt=" " /></li>
								<li><img class="img-responsive"
									src="boltzmod/images/banner2.jpg" alt=" " /></li>

							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="men-wear-bottom">
						<div class="col-sm-4 men-wear-left">
							<img class="img-responsive" src="boltzmod/images/bb2.jpg" alt=" " />
						</div>
						<div class="col-sm-8 men-wear-right">
							<h4>
								Mens Wear & Womens Wear<span>Collection</span>
							</h4>
							<p></p>
						</div>
						<div class="clearfix"></div>
					</div>



<%
		if(l.contains(ssj[0]))
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");								
	String gg="select * from ssjproduct where BrandName='"+ssj[0]+"' and Gender='"+ssj[1]+"'";
	ResultSet rs=con.prepareStatement(gg).executeQuery();			
	while (rs.next()) {
		ProductId = rs.getString(1);
		BrandName = rs.getString(2);
		
		Size1 = rs.getString(3);
		Size2 = rs.getString(4);
		Size3 = rs.getString(5);
		Size4 = rs.getString(6);

		MRP = rs.getString(9);

		SellPrice = rs.getString(11);
		Discount = rs.getString(10);
		ClothName=rs.getString(20); 
		
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
		Calprice = (int) calcution;
		
		
		System.out.println("Calprice" + "      " + Calprice);
		lcal=Cal-Calprice;
		Disprice = Integer.toString(lcal);

		Category = rs.getString(13);
		Gender = rs.getString(7);
		Sleeves = rs.getString(14);
		Image = rs.getString(15);
		System.out.println("quantit img" + "     " + Image);
		Wear = rs.getString(12);
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
							<a href="single.html" class="link-product-add-cart">Quick
								View</a>
						</div>
					</div>
					<span class="product-new-top">New</span>

				</div>
				<div class="item-info-product ">
					<h4>
						<a href="#"><%=BrandName%></a>
						<br></br>
						<label><%=BrandName%> <%=ClothName%></label>
					</h4>
					<div class="info-product-price">

						<del><%=MRP%></del>
						<span class="item_price"><%=Discount%></span><br></br> <span
							class="item_price">Rs <%=Disprice%></span>


						<!-- 	<label>Quantity</label>
													<input type="text" name="qn"   min="1" max="100" >
												<input type="number" name="qtn" value="1"> -->
					</div>
					<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
					<form action="OtherBrand_DB.jsp" method="post">
						
						Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
						
						<div
							class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">

							<fieldset>
								<!-- 	<input type="hidden" name="add" value="1"> -->
								<input type="hidden" name="item_nameId" value=<%=ProductId%>>
								<input type="hidden" name="item_name" value=<%=BrandName%>>
								<input type="hidden" name="amount" value="<%=Disprice%>">
								<input type="hidden" name="discount" value="<%=Discount%>">
								<input type="hidden" name="imagee" value="<%=Image%>">
								<input type="hidden" name="qtn" value=<%=Quantity%>> <input
									type="hidden" name="size1" value=<%=rs.getString(3)%>>
								<input type="hidden" name="size2" value=<%=rs.getString(4)%>>
								<input type="hidden" name="size3" value=<%=rs.getString(5)%>>
								<input type="hidden" name="size4" value=<%=rs.getString(6)%>>
								<input type="hidden" name="gen" value=<%=rs.getString(7)%>>




								<input type="submit" name="submit" value="Add to cart"
									class="button">
							</fieldset>

						</div>
					</form>


				</div>
			</div>
		</div>

		<%

	
	}
		 }
		catch(Exception ys)
		   {
			 ys.printStackTrace();
		      }
					}
	

	%>
	 </body>
	 </html>
	 <%
 
	}
%>















	<% if(ssjFBrand!=null)
	{%>
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
								<!-- <li class=" menu__item"><a class="menu__link"
									href="about.html">shipping status</a></li> -->
								<li class="dropdown menu__item menu__item--current"><a
									href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
									 role="button" aria-haspopup="true"
									aria-expanded="false">Men's wear <span class="caret"></span></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
												<a href="mens.html"><img src="boltzmod/images/top2.jpg"
													alt=" " /></a>
											</div>
											<div class="col-sm-3 multi-gd-img">
												
											</div>
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
									class="dropdown-toggle menu__link" data-toggle="dropdown"
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
											<!-- <div class="col-sm-3 multi-gd-img">
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
											<div class="col-sm-6 multi-gd-img multi-gd-text ">
												<a href="womens.html"><img
													src="boltzmod/images/top1.jpg" alt=" " /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="menu__item dropdown"><a class="menu__link"
									href="BoltzKidCollec.jsp" class="dropdown-toggle" data-toggle="dropdown">kids
										Wear<b class="caret"></b>
								</a> <!-- 	<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul> --></li>
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
				Men's and Women's<span>Wear </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="index.html">Home</a><i>|</i></li>
						<li>Men's Wear</li>
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
					<h3>
						Filter By <span>Price</span>
					</h3>
					<ul class="dropdown-menu6">
						<li>
							<div id="slider-range"></div> <input type="text" id="amount"
							style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>
					</ul>
				</div>
				<div class="css-treeview">
					<h4>Filter</h4>
					<ul class="tree-list-pad">
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
					</ul>
				</div>
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
								src="boltzmod/images/banner2.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="boltzmod/images/banner5.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="boltzmod/images/banner2.jpg" alt=" " /></li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="men-wear-bottom">
					<div class="col-sm-4 men-wear-left">
						<img class="img-responsive" src="boltzmod/images/bb2.jpg" alt=" " />
					</div>
					<div class="col-sm-8 men-wear-right">
						<h4>
							Mens Wear & Womens Wear<span>Collection</span>
						</h4>
						<p></p>
					</div>
					<div class="clearfix"></div>
				</div>



<%
	if(l.contains(ssjf[0]))
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");								
String gg="select * from ssjproduct where BrandName='"+ssjf[0]+"' and Gender='"+ssjf[1]+"'";
ResultSet rs=con.prepareStatement(gg).executeQuery();			
while (rs.next()) {
	ProductId = rs.getString(1);
	BrandName = rs.getString(2);
	
	Size1 = rs.getString(3);
	Size2 = rs.getString(4);
	Size3 = rs.getString(5);
	Size4 = rs.getString(6);

	MRP = rs.getString(9);

	SellPrice = rs.getString(11);
	Discount = rs.getString(10);
	ClothName=rs.getString(20);
	
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
	Calprice = (int) calcution;
	
	
	System.out.println("Calprice" + "      " + Calprice);
	lcal=Cal-Calprice;
	Disprice = Integer.toString(lcal);

	Category = rs.getString(13);
	Gender = rs.getString(7);
	Sleeves = rs.getString(14);
	Image = rs.getString(15);
	System.out.println("quantit img" + "     " + Image);
	Wear = rs.getString(12);
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
						<a href="single.html" class="link-product-add-cart">Quick
							View</a>
					</div>
				</div>
				<span class="product-new-top">New</span>

			</div>
			<div class="item-info-product ">
				<h4>
					<a href="#"><%=BrandName%></a>
					<br></br>
					<label><%=BrandName %> <%=ClothName%></label>
				</h4>
				<div class="info-product-price">

					<del><%=MRP%></del>
					<span class="item_price"><%=Discount%></span><br></br> <span
						class="item_price">Rs <%=Disprice%></span>


					<!-- 	<label>Quantity</label>
												<input type="text" name="qn"   min="1" max="100" >
											<input type="number" name="qtn" value="1"> -->
				</div>
				<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
				<form action="OtherBrand_DB.jsp" method="post">
				Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">

						<fieldset>
							<!-- 	<input type="hidden" name="add" value="1"> -->
							<input type="hidden" name="item_nameId" value=<%=ProductId%>>
							<input type="hidden" name="item_name" value=<%=BrandName%>>
							<input type="hidden" name="amount" value="<%=Disprice%>">
							<input type="hidden" name="discount" value="<%=Discount%>">
							<input type="hidden" name="imagee" value="<%=Image%>">
							<input type="hidden" name="qtn" value=<%=Quantity%>> <input
								type="hidden" name="size1" value=<%=rs.getString(3)%>>
							<input type="hidden" name="size2" value=<%=rs.getString(4)%>>
							<input type="hidden" name="size3" value=<%=rs.getString(5)%>>
							<input type="hidden" name="size4" value=<%=rs.getString(6)%>>
							<input type="hidden" name="gen" value=<%=rs.getString(7)%>>




							<input type="submit" name="submit" value="Add to cart"
								class="button">
						</fieldset>

					</div>
				</form>


			</div>
		</div>
	</div>

	<%


}
	 }
	catch(Exception ys)
	   {
		 ys.printStackTrace();
	      }
				}
	}



%>



<%
if(vijMBrand!= null)
{
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
									<!-- <li class=" menu__item"><a class="menu__link"
										href="about.html">shipping status</a></li> -->
									<li class="dropdown menu__item menu__item--current"><a
										href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
										 role="button" aria-haspopup="true"
										aria-expanded="false">Men's wear <span class="caret"></span></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="agile_inner_drop_nav_info">
												<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
													<a href="mens.html"><img src="boltzmod/images/top2.jpg"
														alt=" " /></a>
												</div>
												<div class="col-sm-3 multi-gd-img">
													
												</div>
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
										class="dropdown-toggle menu__link" data-toggle="dropdown"
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
												<!-- <div class="col-sm-3 multi-gd-img">
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
												<div class="col-sm-6 multi-gd-img multi-gd-text ">
													<a href="womens.html"><img
														src="boltzmod/images/top1.jpg" alt=" " /></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul></li>
									<li class="menu__item dropdown"><a class="menu__link"
										href="BoltzKidCollec.jsp" class="dropdown-toggle" data-toggle="dropdown">kids
											Wear<b class="caret"></b>
									</a> <!-- 	<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="typography.html">Typography</a></li>
									</ul> --></li>
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
					Men's and Women's<span>Wear </span>
				</h3>
				<!--/w3_short-->
				<div class="services-breadcrumb">
					<div class="agile_inner_breadcrumb">

						<ul class="w3_short">
							<li><a href="index.html">Home</a><i>|</i></li>
							<li>Men's Wear</li>
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
						
						<ul class="dropdown-menu6">
							<li>
								<div id="slider-range"></div> <input type="text" id="amount"
								style="border: 0; color: #ffffff; font-weight: normal;" />
							</li>
						</ul>
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
									src="boltzmod/images/banner2.jpg" alt=" " /></li>
								<li><img class="img-responsive"
									src="boltzmod/images/banner5.jpg" alt=" " /></li>
								<li><img class="img-responsive"
									src="boltzmod/images/banner2.jpg" alt=" " /></li>

							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="men-wear-bottom">
						<div class="col-sm-4 men-wear-left">
							<img class="img-responsive" src="boltzmod/images/bb2.jpg" alt=" " />
						</div>
						<div class="col-sm-8 men-wear-right">
							<h4>
								Mens Wear & Womens Wear<span>Collection</span>
							</h4>
							<p></p>
						</div>
						<div class="clearfix"></div>
					</div>

					<% 							
					if(l.contains(vijm[0]))
					{
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");								
				String gg="select * from viendiaproduct where BrandName='"+vijm[0]+"' and Gender='"+vijm[1]+"' ";
				ResultSet rs=con.prepareStatement(gg).executeQuery();			
				while (rs.next()) {
					ProductId = rs.getString(1);
					BrandName = rs.getString(2);
					
					Size1 = rs.getString(3);
					Size2 = rs.getString(4);
					Size3 = rs.getString(5);
					Size4 = rs.getString(6);

					MRP = rs.getString(9);

					SellPrice = rs.getString(11);
					Discount = rs.getString(10);
					ClothName=rs.getString(20);
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
					Calprice = (int) calcution;
					
					
					System.out.println("Calprice" + "      " + Calprice);
					lcal=Cal-Calprice;
					Disprice = Integer.toString(lcal);

					Category = rs.getString(13);
					Gender = rs.getString(7);
					Sleeves = rs.getString(14);
					Image = rs.getString(15);
					System.out.println("quantit img" + "     " + Image);
					Wear = rs.getString(12);
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
										<a href="single.html" class="link-product-add-cart">Quick
											View</a>
									</div>
								</div>
								<span class="product-new-top">New</span>

							</div>
							<div class="item-info-product ">
								<h4>
									<a href="#"><%=BrandName%></a>
									<br></br>
									<label><%=BrandName %> <%=ClothName%></label>
								</h4>
								<div class="info-product-price">

									<del><%=MRP%></del>
									<span class="item_price"><%=Discount%></span><br></br> <span
										class="item_price">Rs <%=Disprice%></span>


									<!-- 	<label>Quantity</label>
																<input type="text" name="qn"   min="1" max="100" >
															<input type="number" name="qtn" value="1"> -->
								</div>
								<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
								<form action="OtherBrand_DB.jsp" method="post">
									Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">

										<fieldset>
											<!-- 	<input type="hidden" name="add" value="1"> -->
											<input type="hidden" name="item_nameId" value=<%=ProductId%>>
											<input type="hidden" name="item_name" value=<%=BrandName%>>
											<input type="hidden" name="amount" value="<%=Disprice%>">
											<input type="hidden" name="discount" value="<%=Discount%>">
											<input type="hidden" name="imagee" value="<%=Image%>">
											<input type="hidden" name="qtn" value=<%=Quantity%>> <input
												type="hidden" name="size1" value=<%=rs.getString(3)%>>
											<input type="hidden" name="size2" value=<%=rs.getString(4)%>>
											<input type="hidden" name="size3" value=<%=rs.getString(5)%>>
											<input type="hidden" name="size4" value=<%=rs.getString(6)%>>
											<input type="hidden" name="gen" value=<%=rs.getString(7)%>>




											<input type="submit" name="submit" value="Add to cart"
												class="button">
										</fieldset>

									</div>
								</form>


							</div>
						</div>
					</div>

					<%

				
				}
					 }
					catch(Exception ys)
					   {
						 ys.printStackTrace();
					      }
					}	

					%>
					 </body>
					 </html>
					 <%
					}
				


	%>
	
	
	
	
	
	
	<%
	
if(vijFBrand!=null)
{
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
								<!-- <li class=" menu__item"><a class="menu__link"
									href="about.html">shipping status</a></li> -->
								<li class="dropdown menu__item menu__item--current"><a
									href="BoltzMenColl.jsp" class="dropdown-toggle menu__link"
									 role="button" aria-haspopup="true"
									aria-expanded="false">Men's wear <span class="caret"></span></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
												<a href="mens.html"><img src="boltzmod/images/top2.jpg"
													alt=" " /></a>
											</div>
											<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="">shirts</a></li>
													<li><a href="mens.html">jeans</a></li>
													<li><a href="mens.html">T-shirt & polos</a></li>
													<li><a href="mens.html">casual wear</a></li>
													<li><a href="mens.html">formal wear</a></li>
													<li><a href="mens.html">coats</a></li>
													<li><a href="mens.html">Caps & Hats</a></li>
												</ul>
											</div>
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
									class="dropdown-toggle menu__link" data-toggle="dropdown"
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
											<!-- <div class="col-sm-3 multi-gd-img">
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
											<div class="col-sm-6 multi-gd-img multi-gd-text ">
												<a href="womens.html"><img
													src="boltzmod/images/top1.jpg" alt=" " /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="menu__item dropdown"><a class="menu__link"
									href="BoltzKidCollec.jsp" class="dropdown-toggle" data-toggle="dropdown">kids
										Wear<b class="caret"></b>
								</a> <!-- 	<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul> --></li>
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
							<a href="#"></a>
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
				Men's and Women's<span>Wear </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="index.html">Home</a><i>|</i></li>
						<li>Men's Wear</li>
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
					
					<ul class="dropdown-menu6">
						<li>
							<div id="slider-range"></div> <input type="text" id="amount"
							style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>
					</ul>
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
								src="boltzmod/images/banner2.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="boltzmod/images/banner5.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="boltzmod/images/banner2.jpg" alt=" " /></li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="men-wear-bottom">
					<div class="col-sm-4 men-wear-left">
						<img class="img-responsive" src="boltzmod/images/bb2.jpg" alt=" " />
					</div>
					<div class="col-sm-8 men-wear-right">
						<h4>
							Mens Wear & Womens Wear<span>Collection</span>
						</h4>
						<p></p>
					</div>
					<div class="clearfix"></div>
				</div>

				<% 
				
							
							
				if(l.contains(vijf[0]))
				{
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");								
			String gg="select * from viendiaproduct where BrandName='"+vijf[0]+"' and Gender='"+vijf[1]+"'";
			ResultSet rs=con.prepareStatement(gg).executeQuery();			
			while (rs.next()) {
				ProductId = rs.getString(1);
				BrandName = rs.getString(2);
				
				Size1 = rs.getString(3);
				Size2 = rs.getString(4);
				Size3 = rs.getString(5);
				Size4 = rs.getString(6);

				MRP = rs.getString(9);

				SellPrice = rs.getString(11);
				Discount = rs.getString(10);
				ClothName=rs.getString(20);
				
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
				Calprice = (int) calcution;
				
				
				System.out.println("Calprice" + "      " + Calprice);
				lcal=Cal-Calprice;
				Disprice = Integer.toString(lcal);

				Category = rs.getString(13);
				Gender = rs.getString(7);
				Sleeves = rs.getString(14);
				Image = rs.getString(15);
				System.out.println("quantit img" + "     " + Image);
				Wear = rs.getString(12);
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
									<a href="single.html" class="link-product-add-cart">Quick
										View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href="#"><%=BrandName%></a>
								<br></br>
								<label><%=BrandName %> <%=ClothName%></label>
							</h4>
							<div class="info-product-price">

								<del><%=MRP%></del>
								<span class="item_price"><%=Discount%></span><br></br> <span
									class="item_price">Rs <%=Disprice%></span>


								<!-- 	<label>Quantity</label>
															<input type="text" name="qn"   min="1" max="100" >
														<input type="number" name="qtn" value="1"> -->
							</div>
							<!-- 			<form action="boltzordershopping.jsp" method="post" >	 -->
							<form action="OtherBrand_DB.jsp" method="post">
								Qty:<input type="number" name="qtn" max=10 pattern="[0-9]{2}" value=<%=Quantity%>>
								
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">

									<fieldset>
										<!-- 	<input type="hidden" name="add" value="1"> -->
										<input type="hidden" name="item_nameId" value=<%=ProductId%>>
										<input type="hidden" name="item_name" value=<%=BrandName%>>
										<input type="hidden" name="amount" value="<%=Disprice%>">
										<input type="hidden" name="discount" value="<%=Discount%>">
										<input type="hidden" name="imagee" value="<%=Image%>">
										<input type="hidden" name="qtn" value=<%=Quantity%>> <input
											type="hidden" name="size1" value=<%=rs.getString(3)%>>
										<input type="hidden" name="size2" value=<%=rs.getString(4)%>>
										<input type="hidden" name="size3" value=<%=rs.getString(5)%>>
										<input type="hidden" name="size4" value=<%=rs.getString(6)%>>
										<input type="hidden" name="gen" value=<%=rs.getString(7)%>>




										<input type="submit" name="submit" value="Add to cart"
											class="button">
									</fieldset>

								</div>
							</form>


						</div>
					</div>
				</div>

				<%

			
			}
				 }
				catch(Exception ys)
				   {
					 ys.printStackTrace();
				      }
							}

				%>
				 </body>
				 </html>
				 <%
}


	

%>


 </body>
 </html>
 