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


				<div class="container">
					<h1>
						<span style="color: green">Data Admin Users</span>
						<button class='btn btn-success pull-right'>
							<a href="usersecurity.jsp">Back</a>

						</button>

							<div class="row justify-content-center">
								<div class="col-md-6 text-center mb-5">
									<h1 class="heading-section">User </h1>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="table-wrap">
										
											<table class="table">
												<thead class="thead-dark">
													<tr>
													<th>Id</th>
														<th>User Name</th>
																				      <th>Email</th>
														<th>Actions</th>						     
													</tr>
												</thead>
												<tbody>

													<%
														try {

																		Class.forName("com.mysql.jdbc.Driver");
																		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root",
																				"root");

																		String query2 = "select * from dclog";
																		PreparedStatement ps1 = con.prepareStatement(query2);
																		ResultSet s = ps1.executeQuery();
																		while (s.next()) {
													%>

													<tr class="alert" role="alert">

														<th scope="row"><%=s.getString(1)%></th>
												<td><%=s.getString(2)%></td>

												<td><%=s.getString(3)%></td>
												<form action="deleteDataAdmin.jsp" method="post">
												<input type="hidden" name="id1" value="<%=s.getString(1)%>">
												<td><button type="submit" >Delete</button>

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
				</body></html>