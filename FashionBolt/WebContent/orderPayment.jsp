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
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String Name = request.getParameter("cardname"), Email = (String)session.getAttribute("toemail"),CardNum=request.getParameter("cardnum"),
	    ccv = request.getParameter("ccv");
		System.out.println(Email+"    "+ccv+"     "+Name+"        "+CardNum);
		session.setAttribute("toemail", Email);
	

		int i = 0, qun = 0, pri = 0, proId = 0;
		Date dNow = new Date( );
        SimpleDateFormat ft = new SimpleDateFormat ("E dd.MM.yyyy 'at' hh:mm:ss a");
        String Paydat = ""+ft.format(dNow)+"";
		System.out.println(Paydat);
		if (Name != null && ccv != null && Email != null ) {
			try {
				System.out.println("hi");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
				String q = "select * from boltzorderlogin where email='" + Email + "'";
				ResultSet fst = con.prepareStatement(q).executeQuery();
				fst.first();
				if (Name.equalsIgnoreCase(fst.getString(2)) && Email.equalsIgnoreCase(fst.getString(3))) {
					String qr = "select * from cartproducts where userCart='" + Email
							+ "' and isChecked='checked' ";
					Statement ps = con.createStatement();
					ResultSet rs = ps.executeQuery(qr);

					while (rs.next()) {
						System.out.print("FIRST LOOP");
						qun = qun + Integer.parseInt(rs.getString(4));
						pri = pri + Integer.parseInt(rs.getString(5));
						proId = Integer.parseInt(rs.getString(2));
						System.out.println("PROID" + proId);
						String query2 = "update update_boltzorder set TolQun=TolQun-'" + qun + "' where id='"
								+ proId + "'";
						PreparedStatement pp = con.prepareStatement(query2);
						pp.executeUpdate();
					}

					String query3 = "insert into userpaymentdetail(fullname,email,totQuntity,totPrice,paystatus,cardnum,paydat,ccv) values('"
							+ Name + "','" + Email + "','" + qun + "','" + pri + "','pending','"+ CardNum +"','"+ Paydat + "','"+ ccv + "')";
					
					
					String qr5 = "select * from userpaymentdetail where email='"+ Email+"' and cardnum='"+CardNum+"'";
					
					PreparedStatement ps1 = con.prepareStatement(query3);
					i = ps1.executeUpdate();
					System.out.print("*********************************");
					 String PKEY = "101451sda";
					
						
					Statement ps5 = con.createStatement();
					ResultSet rs5 = ps5.executeQuery(qr5);
					System.out.print("*************************** encry" );
					while(rs5.next())
					{
						
						
						
						
						String query5 = "insert into userpaymentdetail_encry values( (DES_ENCRYPT(? ,'" + PKEY
							+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
							+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
							+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
							+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
							+ "')))";
					
					PreparedStatement ps6 = con.prepareStatement(query5);
		
				 ps6.setString(1,rs5.getString(1));
					ps6.setString(2,rs5.getString(2));
					ps6.setString(3,rs5.getString(3));
					ps6.setString(4,rs5.getString(4));
					ps6.setString(5,rs5.getString(5));
					ps6.setString(6,rs5.getString(6));
					ps6.setString(7,rs5.getString(7));
					ps6.setString(8,rs5.getString(8));
					ps6.setString(9,rs5.getString(9));
					int i2 = ps6.executeUpdate(); 
			 System.out.print(i2);
			 System.out.print("*************************** encry" );
					 } 
					
					
				
					if (i > 0) {
						String last="update cartproducts  set isChecked='unchecked',Lamount='null',payment='pending',size='no size' where userCart='"+Email +"' and isChecked='checked'";
						String qry = "update userpaymentdetail set paystatus='finished' where email='" + Email
								+ "'";
						int i4=con.prepareStatement(last).executeUpdate();
						int i3 = con.prepareStatement(qry).executeUpdate();
					System.out.print("***************************");
						if (i3 > 0 || i4>0) {
							
	%><script>
		alert('Payment sucessfully')
		window.location = "sucessfullBoltz.jsp"
	</script>
	<%
		} else {
	%><script>
		alert('Payment unsucessfull')
		window.location = "mailrequest.jsp"
	</script>
	<%
		}
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else {
	%><script>
		alert('fill the all the values in the form');
		windows.location('paymentProcss.jsp');
	</script>
	<%
		}
	%>

</body>
</html>