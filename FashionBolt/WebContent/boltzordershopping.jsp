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
  	<title>Table 02</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="Cart_tables/css/style.css">
	
	<link rel="stylesheet" href="carting/css/style.css">
	<!-- Demo CSS (No need to include it into your project) -->
	<link rel="stylesheet" href="carting/css/demo.css">
<script>
	
function myFunction() {
	let chkArr = [];
	let szeArr = [];
	let chkArr1 = [];
	let szeArr1 = [];
	//To get the Enabled checkbox Values 
	let empArr = document.querySelectorAll("input[type='checkbox']:checked");
	let empArr1 = [];
	//To check All checkbox values
	let checkboxes = document.querySelectorAll("input[type='checkbox']");
	//To get All values for dropdown
	let sizes = document.querySelectorAll("select");
	console.log(checkboxes.length);
	console.log(sizes.length);
	
	for (let i = 0; i < checkboxes.length; i++) {
		chkArr.push(checkboxes[i].value);
	}
	
	for (let i = 0; i < empArr.length; i++) {
		empArr1.push(empArr[i].value);
	}
	
	for (let i = 0; i < sizes.length; i++) {
		szeArr.push(sizes[i].value);
	}

	for (let i = 0; i < chkArr.length; i++) {
		chkArr1.push({chkBx:chkArr[i]});
	}

	for (let i = 0; i < szeArr.length; i++) {
		szeArr1.push({sze:szeArr[i]});
	} 
	
	console.log(chkArr1);
	console.log(szeArr1);
	console.log(empArr1);
	
	let arrFinal = [];
	for (let i = 0; i < chkArr.length ; i++) {
		arrFinal.push({chkBx:chkArr[i], sze:szeArr[i]});
  	}
	//console.log('Final Arr',arrFinal);
	//console.log('EmpArray',empArr.length);
	if(empArr.length === 0) {
		alert('Please select atleast one item')	
		return false;
	} 
	
	let blkArr = [];
	 for (let i=0; i < empArr1.length; i++) {
		console.log('i loop');
		for (let j=0; j < arrFinal.length; j++ ) {
			//console.log('j loop');
			 if(empArr1[i] === arrFinal[j].chkBx){
				 //console.log('Same',empArr1[i],' ',arrFinal[j].chkBx);
				 if(arrFinal[j].sze.length === 0){
					//console.log(arrFinal[j].sze.length);
					//console.log('sze emp',arrFinal[j].chkBx);
					blkArr.push(arrFinal[j].chkBx);
				} else {
					console.log('SZE NOT EMPTY')
				}
			} 
		}
	} 

	
	//console.log('BLK ARRAY',blkArr);
	
	 if(blkArr.length > 0) {
		alert('Please select Size for the checked Items No : '.concat(blkArr.toString()))	
		return false;
	} else {
		return true;
	}	 
	
	return false;
}

</script>

		
<style>
    /* Style to center grid column */
    .col-centered{
        float: none;
        margin: 0 auto;
    }
    
    /* Some custom styles to beautify this example */
    .row{
        background: #dbdfe5;
    }
    .demo-content{
        padding: 25px;
        font-size: 18px;
        background: #abb1b8;
    }
</style>

<style type="text/css">
$quantity-btn-color: #95d7fc;
.form-group {
	width: 10%;
	margin: 30px;
	input[type="text"] {
		width: 100%;
		text-align: right;
	}
	.glyphicon {
		color: $quantity-btn-color;
e	DExde	e		}
</style>

	</head>
	<body>
	<a href="Bolthomepage.jsp" class="btn btn-outline-secondary" style="position:relative">Back</a>
			  <section class="ftco-section">
											<div class="container">
												<div class="row justify-content-center">
													<div class="col-md-6 text-center mb-5">
														<h2 class="heading-section">Boltz order Details</h2>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div class="table-wrap">
														<form action="updateQun.jsp" onsubmit="return myFunction()" method="post">
															<table class="table">
															  <thead class="thead-dark">
															    <tr>
															    <th>Select</th>
															    <th>Id</th>
															    <th>BrandName</th>
															      <th>Image</th>
															      <th>MRP</th>
															      <th>Discount</th>
															     <th>User</th>
															      <th>Gender</th>
															      <th>SIZE</th> 
															      <th></th>
                                                                  <th>&nbsp;</th>
															    </tr>
															  </thead>

	<%
	String em = (String) session.getAttribute("toemail");
	String emt = (String)session.getAttribute("toemail");
	String BrandProduct=null,dupImg=null,Price=null,Discnt=null,Pic=null,Disprice=null,Offer=null;int Calprice=0; int Cal=0 ,a=0;	float cc=0,ab=0,calcution=0,f=0;
	dupImg=request.getParameter("imagee");
	String gender = null;

	try
	{
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	String query2="select * from cartproducts where userCart='"+emt+"' ";
	PreparedStatement ps1=con.prepareStatement(query2);
	ResultSet s=ps1.executeQuery();
	while(s.next())
	{
		
		String Id=s.getString("id");
		session.setAttribute("id1", Id);
		BrandProduct=s.getString(3);
		Price=s.getString(5);
		session.setAttribute("upOrgprice", Price);
		Discnt=s.getString(6);
		session.setAttribute("upOrgDisnt", Discnt);
		dupImg=s.getString(7);
		session.setAttribute("upOrgimg", dupImg);
		gender=s.getString(10);

		
		 String qr="update cartproducts set Lamount='"+Disprice+"' where userCart= '"+em+"' and image='"+dupImg+"' ";
			 session.setAttribute("imag",dupImg);
		PreparedStatement ps2=con.prepareStatement(qr);
		ps2.executeUpdate();
				
	%>
								<tbody>


									<tr class="alert" role="alert">
										<td>
										<input type="checkbox" name="Chk" id="ckBox"
											value=<%=s.getString(1)%>>checked</td>
										<th scope="row"><%=s.getString(1)%><input type="hidden"
											<%=s.getString(1)%> name="id"></th>
										<td><%=s.getString(3)%></td>

										<td><img src="<%=s.getString(7)%>" width=100px
											height=100px alt="" class="pro-image-front"></td>
										<td><%=s.getString(5)%></td>
										<td><%=s.getString(6)%></td>
										<!--   </form> -->
										<!--  <form action="deleteCart.jsp" method="post"> <td><button>Remove</button></td>										      	
											      </form> -->
										<td><%=gender%></td>
										<td><%=s.getString(12)%></td>
										<!-- <form action="updateQun.jsp" method="post">  -->
										<td><select name="size" id="sze">
												<option value=""><%=s.getString(8)%></option>
												<option value="32">M</option>
												<option value="36">XL</option>
												<option value="38">XXL</option>
												<option value="34">L</option>
										</select></td>
									</tr>

								</tbody>
								<%
									}
								}

								catch (Exception e) {
								e.printStackTrace();
								}
								%>

							</table>
				<center><input type="submit" value="Buy Product" class="btn btn-primary"></center>
				</form>
				<div class="container my-3 bg-light">
        <div class="col-md-12 text-center">															  
			<!-- <form action="paymentProcss.jsp">  --><!-- </form>	 -->						
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