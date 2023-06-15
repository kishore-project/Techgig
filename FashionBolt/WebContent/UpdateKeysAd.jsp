<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String req = request.getParameter("user");
		String selcProcess = request.getParameter("val");
		String selcarea=request.getParameter("areas");
		System.out.print(selcarea+"       "+selcProcess);		
		if (selcProcess.equalsIgnoreCase("accepted")) {
			System.out.println(selcarea+"       "+selcProcess);	
			String qr = "update decryptionkey set selcprocss='accepted' where user_Name='"
					+ req + "' and user_area='"+selcarea+"' ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
			PreparedStatement st = con1.prepareStatement(qr);
			int i = st.executeUpdate();
			if (i > 0) {

				System.out.print("tfufuyu" + req);
				int randomNumber = 0;
				randomNumber = (int) (Math.random() * 9999);
				if (randomNumber <= 1000) {
					randomNumber = randomNumber + 1000;
				}
				String newRand = null;
				newRand = String.valueOf(randomNumber);

				String qr2 = "update decryptionkey set decriptionid='" + newRand
						+ "' where user_Name='" + req + "'and selcprocss='accepted' and user_area='"+selcarea+"'";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root",
						"root");
				PreparedStatement st2 = con2.prepareStatement(qr2);
				int i2 = st2.executeUpdate();

				if (i2 > 0) {
	%>
	<script type="text/javascript">
		alert('sucess updation');
		window.location = "Reqkeytable.jsp"
	</script>

	<%
		}
			}
		}

		else {
			String qr = "update decryptionkey set selcprocss='rejected',decriptionid='0' where user_Name='" + req
					+ "' ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
			PreparedStatement st = con1.prepareStatement(qr);
			int i = st.executeUpdate();

			if (i > 0) {
	%>
	<script type="text/javascript">
		alert('unsucessful rejected');
		window.location = "Reqkeytable.jsp"
	</script>

	<%
		}
		}
	%>
</body>
</html>