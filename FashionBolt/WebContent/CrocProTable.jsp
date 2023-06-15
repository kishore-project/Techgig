<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.*"%>

<!doctype html>
<html lang="en">
<head>
<title>Table 02</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href='https://www.fontspace.com/typographica-font-f23015'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="Cart_tables/css/style.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	
</script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
	
</script>
<style>.header-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
}

h1 {
  text-align: center;
}

.button-container {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

button {
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  font-size: 18px;
  cursor: pointer;
}

.yes-button {
  background-color: green;
  color: white;
  margin-right: 10px;
}

.no-button {
  background-color: red;
  color: white;
}
</style>
</head>
<body
	style="background-image: url('HA.jpg'); width: 100%; height: 100%; object-fit: cover; background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
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
	<%
		String req = (String) session.getAttribute("Admail");
		String qtr = null;
		String qtr2 = null;
		System.out.println(req);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
			qtr = "select * from decryptionkey where user_Name='" + req
					+ "' and decriptionid='0' and user_area='Croc'";
			qtr2 = "select * from decryptionkey where user_Name='" + req
					+ "' and selcprocss='accepted' and user_area='Croc'";
			String query = "select count(*) from decryptionkey where user_Name='" + req + "' and user_area='Croc'";
			ResultSet rs = con1.prepareStatement(qtr).executeQuery();
			ResultSet rset = con1.prepareStatement(query).executeQuery();
			ResultSet rsl=con1.prepareStatement(qtr2).executeQuery();
			if(rsl.next())
			{
				%>

				<div class="container">
					<h1>
						<span style="color: green">Croc product</span>
						<button class='btn btn-success pull-right'>
							<a href="Admin_cusOrd.jsp">Back</a>

						</button>

							<div class="row justify-content-center">
								<div class="col-md-6 text-center mb-5">
									<h1 class="heading-section">Croc product details</h1>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="table-wrap">
										<form action="updateQun.jsp">
											<table class="table">
												<thead class="thead-dark">
													<tr>
														<th>id</th>
										<th>id</th>
										<th>BrandName</th>
										<th>Deatils</th>
										<th>Sizes1</th>
										<th>Sizes2</th>
										<th>Sizes3</th>
										<th>Sizes4</th>
										<th>MRP</th>
										<th>SellPrice</th>
										<th>Discount</th>
										<th>Category</th>
										<th>Gender</th>
										<th>Sleeves</th>
										<th>Images</th>
										<th>Wear</th>
										<th>TotQun</th>
										<th>ExpDate</th>
										<th>UpdDate</th>
										<th>&nbsp;</th>
													</tr>
												</thead>
												<tbody>

													<%
														try {

																		Class.forName("com.mysql.jdbc.Driver");
																		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root",
																				"root");

																		String query2 = "select * from crocproduct";
																		PreparedStatement ps1 = con.prepareStatement(query2);
																		ResultSet s = ps1.executeQuery();
																		while (s.next()) {
													%>

													<tr class="alert" role="alert">

															<th scope="row"><%=s.getString(1) %></th>
											<td><%=s.getString(2) %></td>
											<td><%=s.getString(3) %></td>
											<td><%=s.getString(4) %></td>
											<td><%=s.getString(5) %></td>
											<td><%=s.getString(6) %></td>
											<td><%=s.getString(7) %></td>
											<td><%=s.getString(8) %></td>
											<td><%=s.getString(9) %></td>
											<td><%=s.getString(10) %></td>
											<td><%=s.getString(11) %></td>
											<td><%=s.getString(12) %></td>
											<td><%=s.getString(13) %></td>
											<td><%=s.getString(14) %></td>
											<td><%=s.getString(15) %></td>

											<td><%=s.getString(17) %></td>
											<td><%=s.getString(18) %></td>
											<td><%=s.getString(19) %></td>

														

													</tr>


													<%
														}
																	} catch (Exception e) {
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
				
				
		<%		
				
			}

			else if (rs.next() && rset.next()) {
				int cnt = rset.getInt(1);
				System.out.println(rs.getString(3).equals("rejected"));
				System.out.println(rs.getString(4).equals("0"));
				System.out.println("count" + cnt + "       iuerui0e               " + rs.getString(4)
						+ "            " + rs.getString(3) + "      user" + rs.getString(2) + "  " + rs.first());

				if ((rs.getString(3).equals("rejected")) && (rs.getString(4).equals("0") || cnt == 0)) {
	%>

	<div class="container">
		<h1>
			<span style="color: green">Croc product</span>
			<button class='btn btn-success pull-right'>
				<a href="Admin_cusOrd.jsp">Back</a>

			</button>


			<form action="KeyRequest_Page.jsp" method="post">
				<input type="hidden" name="user" value="Croc">
				<button class='btn btn-success pull-right' value="Request Decrypt">
					Request Decrypt</button>
			</form>




			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<form action="updateQun.jsp">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>id</th>
										<th>BrandName</th>
										<th>Deatils</th>
										<th>Sizes1</th>
										<th>Sizes2</th>
										<th>Sizes3</th>
										<th>Sizes4</th>
										<th>MRP</th>
										<th>SellPrice</th>
										<th>Discount</th>
										<th>Category</th>
										<th>Gender</th>
										<th>Sleeves</th>
										<th>Images</th>
										<th>Wear</th>
										<th>TotQun</th>
										<th>ExpDate</th>
										<th>UpdDate</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>

									<%
										try {

														Class.forName("com.mysql.jdbc.Driver");
														Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root",
																"root");
														String query2 = "select * from crocproduct_encry";
														PreparedStatement ps1 = con.prepareStatement(query2);
														ResultSet s = ps1.executeQuery();
														while (s.next()) {
									%>

									<tr class="alert" role="alert">

											<th scope="row"><%=s.getString(1) %></th>
											<td><%=s.getString(2) %></td>
											<td><%=s.getString(3) %></td>
											<td><%=s.getString(4) %></td>
											<td><%=s.getString(5) %></td>
											<td><%=s.getString(6) %></td>
											<td><%=s.getString(7) %></td>
											<td><%=s.getString(8) %></td>
											<td><%=s.getString(9) %></td>
											<td><%=s.getString(10) %></td>
											<td><%=s.getString(11) %></td>
											<td><%=s.getString(12) %></td>
											<td><%=s.getString(13) %></td>
											<td><%=s.getString(14) %></td>
											<td><%=s.getString(15) %></td>

											<td><%=s.getString(17) %></td>
											<td><%=s.getString(18) %></td>
											<td><%=s.getString(19) %></td>


									</tr>


									<%
										}
													} catch (Exception e) {
														e.printStackTrace();
													}
									%>

								</tbody>
							</table>
					</div>
				</div>
			</div>
	</div>

	<%
		} else if ((rs.getString(2).equals(req) && rs.getString(5).equals("boltz")) && rs.getString(3).equals("accepted") ) {
	%>






	<div class="container">
		<h1>
			<span style="color: green">Croc product</span>
			<button class='btn btn-success pull-right'>
				<a href="dc_Homepag.jsp">Back</a>

				

				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h1 class="heading-section">Croc product details</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="table-wrap">
							<form action="updateQun.jsp">
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th>id</th>
										<th>BrandName</th>
										<th>Deatils</th>
										<th>Sizes1</th>
										<th>Sizes2</th>
										<th>Sizes3</th>
										<th>Sizes4</th>
										<th>MRP</th>
										<th>SellPrice</th>
										<th>Discount</th>
										<th>Category</th>
										<th>Gender</th>
										<th>Sleeves</th>
										<th>Images</th>
										<th>Wear</th>
										<th>TotQun</th>
										<th>ExpDate</th>
										<th>UpdDate</th>
										<th>&nbsp;</th>
										</tr>
									</thead>
									<tbody>

										<%
											try {

															Class.forName("com.mysql.jdbc.Driver");
															Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root",
																	"root");

															String query2 = "select * from crocproduct";
															PreparedStatement ps1 = con.prepareStatement(query2);
															ResultSet s = ps1.executeQuery();
															while (s.next()) {
										%>

										<tr class="alert" role="alert">

												<th scope="row"><%=s.getString(1) %></th>
											<td><%=s.getString(2) %></td>
											<td><%=s.getString(3) %></td>
											<td><%=s.getString(4) %></td>
											<td><%=s.getString(5) %></td>
											<td><%=s.getString(6) %></td>
											<td><%=s.getString(7) %></td>
											<td><%=s.getString(8) %></td>
											<td><%=s.getString(9) %></td>
											<td><%=s.getString(10) %></td>
											<td><%=s.getString(11) %></td>
											<td><%=s.getString(12) %></td>
											<td><%=s.getString(13) %></td>
											<td><%=s.getString(14) %></td>
											<td><%=s.getString(15) %></td>

											<td><%=s.getString(17) %></td>
											<td><%=s.getString(18) %></td>
											<td><%=s.getString(19) %></td>


										</tr>


										<%
											}
														} catch (Exception e) {
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
	<%
		}
		
			
			
			
			
			
			
			}
			else
			{%>
			<button class='btn btn-success pull-right'>
				<a href="Admin_cusOrd.jsp">Back</a>

			</button>
		
				<!-- <form action="KeyRequest_Page.jsp" method="post"> -->
				
	
				<!-- <input type="hidden" name="user" value="Croc"> -->
						<div class="header-container">
  <h1>Request View Table</h1>
  <div class="button-container">
    <button  class="yes-button"><a href="KeyRequest_Page.jsp?user=Croc">Yes</a></button>
    <button class="no-button"><a href="Admin_cusOrd.jsp">No</a></button>
  </div>
</div>
				
				
		<!-- 	</form>	 -->
		<%	
		
			
			}
		} catch (Exception es) {

		}
	%>


</body>
</html>
