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
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<style>

body { .price 


{ list-style-type:none;
	border: 1px solid #eee;
	margin: 0;
	padding: 0;
	-webkit-transition: 0.3s;
	transition: 0.3s;
}

.price .grey {
	background-color: #eee;
	font-size: 20px;
}

.columns {
	float: left;
	width: 33.3%;
	padding: 8px;
}

font-family
:
 
Arial
;

  
font-size
:
 
17
px
;

  
padding
:
 
8
px
;


}
* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
	width:25%;
}

 .col-50 {
	-ms-flex: 50%; /* IE10 */
	 flex: 50%;
	 width:50%;
}   

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
	width:25%;
}
/*  .col-25 {
	padding: 0 16px;
	width:25%;
} */
.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #04AA6D;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
</script>
 <script>/* $(function(){
	  $("input[name='upi']").on('input', function (e) {
		    $(this).val($(this).val().replace(/[^0-9]/g, ''));
		  });
		}); */
 
 function allLetter(inputtxt)
 { 
 var letters = /^[A-Za-z]+$/;
 if(inputtxt.value.match(letters))
 {
 alert('Your upi ID have accepted : you can try another');
 return true;
 }
 else
 {
 alert('Please upi ID input alphabet characters only');
 return false;
 }
 }
 </script> 
</head>
<body>

	<h2>Billing Check Out</h2>
	<p></p>
	<div class="row">
		<div class="col-75">
			<div class="container">
				<form name="form1" action="orderPayment.jsp" method="post" autocomplete="off">

					<div class="row">
						<div class="col-50">
							<h3>Billing Detail</h3>
							<label for="fname"><i class="fa fa-user"></i> Full Name</label> <input
								type="text" id="fname" name="firstname"
								placeholder="John M. Doe"> <label for="email"><i
								class="fa fa-envelope"></i> Email</label> <input type="text" id="email"
								name="email" placeholder="john@example.com"> <label
								for="adr"><i class="fa fa-address-card-o"></i> UPI ID</label> 
								
<input type="text" placeholder="eg:111221222@upi"
								maxlength="12" name="upi"   minlength="12" >
								
								
							 <label for="city"><i
								class="fa fa-institution"></i> City</label> <input type="text" id="city"
								name="city" placeholder="chennai"> <!-- <label for="dat"><i
								class="fa fa-institution"></i> PaymentDate</label> <input type="date"
								id="dat" name="paydate" placeholder="paymentdate">
							<div class="row"> -->
								<div class="col-50">
									<!--  <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY"> -->
								</div>
								<div class="col-50">
									<!--  <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001"> -->
								</div>
							</div>
						</div>

						<!--   <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" size="18" id="cr_no" minlength="19" maxlength="19">
            
                <label for="expmonth">Exp Month</label>
            <input type="month" id="expmonth" name="expmonth" placeholder="September">
            <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352" maxlength="3">
                    
          
          </div> -->

					</div>
					<label> <!--  <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing -->
					</label><button  type="submit"   class="btn btn-primary btn-lg" value="Continue to checkout">Continue to checkout</button>
<!-- onclick="return allLetter(document.form1.upi)" -->


				</form>

			</div>
		</div>
		<div class="col-25">
			<div class="container">
 <% 
   
			Integer qun=(Integer)session.getAttribute("needqun");
            Integer amt=(Integer )session.getAttribute("needamt");
			String mail=(String)session.getAttribute("toemail");
		%>
				<h3>Amounts</h3>
				
				<div class="columns">
					<ul class="price">
						<li class="header">quantity :<%=qun%></li>
						<li class="grey">mail :<%=mail%></li>
						<li>totalamount:Rs <%=amt%></li>

    
					</ul>
				</div>










				<%-- <%     String mail= (String)session.getAttribute("toemail");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
    String qr="select * from userpaymentdetail where userCart='"+mail+"' "; 
    PreparedStatement ps=con.prepareStatement(qr);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    %>
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
      <p><a href="#">ToltalQuantity</a> <span class="price"><%=rs.getString(4)%></span></p>
      <p><a href="#">Total Price</a> <span class="price"><%=rs.getString(14) %>></span></p>
    
      <hr>
      <p>Total <span class="price" style="color:black"><b><%=rs.getString(11) %></b></span></p>
      <%
      }
      %> --%>

			</div>
		</div>
	</div>

</body>
</html>
