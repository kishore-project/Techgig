<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DB CALL</title>
</head>
<body>
	<%
	
	
	String pid = request.getParameter("item_nameId");
	String gender = request.getParameter("gen");
	String brand = request.getParameter("item_name");
	String mrp = request.getParameter("amount");
	String quan = request.getParameter("qtn");
	/* (String)session.getAttribute("luffy"); */
	//	session.setAttribute("forq", quan);
	String lamount=request.getParameter("lamt");
	System.out.println("quantity" + "     " + quan);
	String discount = request.getParameter("discount");
	String imgs = request.getParameter("imagee");
	String em = (String) session.getAttribute("toemail");

	String siz1 = request.getParameter("size1");
	String siz2 = request.getParameter("size2");
	String siz3 = request.getParameter("size3");
	String siz4 = request.getParameter("size4");

	try {

		System.out.println("em" + "    " + em);
		System.out.println("quantity" + "     " + quan);
		System.out.println(imgs);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
		String qry="select * from update_boltzorder";
		PreparedStatement ps1 = con.prepareStatement(qry);
		
		
		String query = "insert into cartproducts(productname,price,quantity,discount,image,size,payment,userCart,gender,productId,Lamount) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, brand);
		ps.setString(2, mrp);
		ps.setString(3, quan);
		ps.setString(4, discount);
		ps.setString(5, imgs);
		ps.setString(6, "no size");
		ps.setString(7, "pending");
		ps.setString(8, em);
		ps.setString(9, gender);
		ps.setString(10, pid);
		ps.setString(11, lamount);
		int status = ps.executeUpdate();
		if (status > 0) {
	%>
	<jsp:forward page="BoltzMenColl.jsp"></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="BoltzMenColl.jsp"></jsp:forward>
	<%
		}

	}

	catch (Exception e) {
	e.printStackTrace();
	}
	%>

</body>
</html>