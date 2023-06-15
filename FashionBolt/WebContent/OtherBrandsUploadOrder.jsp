
<%@page import="java.io.PrintWriter"%>
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
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
<body>

	<%
		List l2 = new ArrayList();
		String PKEY = "101451sda";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");

			String qry = "select * from customerorderlogin where status='accepted' and Deal='closed'";
			ResultSet rs = con.prepareStatement(qry).executeQuery();
			while (rs.next()) {
				l2.add(rs.getString(3));
			}
			System.out.print(l2);
		} catch (Exception es) {
			es.printStackTrace();
		}

		PrintWriter ou = response.getWriter();

		int i2 = 0;
		ServletContext context = getServletContext();
		String updat = request.getParameter("upd");

		String user = (String) session.getAttribute("mailto");

		System.out.print(user);

		if (l2.contains(user) && user.equalsIgnoreCase("Croc@gmail.com")) {
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
				String qt = "select * from productorreq where BrandEmailID='Croc@gmail.com'";
				ResultSet ss = con.prepareStatement(qt).executeQuery();

				int sum = 0;
				if (ss.next()) {
					System.out.print("what is happen1");
					if (ss.getString(13).equalsIgnoreCase("closed")) {

						System.out.print("what is happen2");
						String del="delete from crocproduct_encry";
						  String del2="delete from crocproduct";
						  
							 PreparedStatement sg= con.prepareStatement(del);
							 PreparedStatement str=con.prepareStatement(del2);
							 int jk=sg.executeUpdate(); 
							 int ks=str.executeUpdate();
							 
									 
							 if(((jk>0 )&&(ks>0))  ||  ((jk==0)||(ks==0)))
							 {
							 

						String csv = "E:/workspace/BtoB/BtoB/FashionBolt";
						String csvFilePath = csv + "//WebContent//fashioncsv//crocClientBrandorder.csv";
						String qry = "LOAD DATA INFILE '" + csvFilePath + "'"
								+ "INTO TABLE crocproduct FIELDS TERMINATED BY ','" + "OPTIONALLY ENCLOSED by '\"'"
								+ "IGNORE 1 LINES";

						PreparedStatement st = con.prepareStatement(qry);
						int i = st.executeUpdate();

						if (i > 0) {
							String g1 = "select * from crocproduct";
							ResultSet rs = con.prepareStatement(g1).executeQuery();

							while (rs.next()) {
								String g2 = "insert into crocproduct_encry values((DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
										+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
										+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')))";

								PreparedStatement st4 = con.prepareStatement(g2);
								st4.setString(1, rs.getString(1));
								st4.setString(2, rs.getString(2));
								st4.setString(3, rs.getString(3));
								st4.setString(4, rs.getString(4));
								st4.setString(5, rs.getString(5));
								st4.setString(6, rs.getString(6));
								st4.setString(7, rs.getString(7));
								st4.setString(8, rs.getString(8));
								st4.setString(9, rs.getString(9));
								st4.setString(10, rs.getString(10));
								st4.setString(11, rs.getString(11));
								st4.setString(12, rs.getString(12));
								st4.setString(13, rs.getString(13));
								st4.setString(14, rs.getString(14));
								st4.setString(15, rs.getString(15));
								st4.setString(16, rs.getString(16));
								st4.setString(17, rs.getString(17));
								st4.setString(18, rs.getString(18));
								st4.setString(19, rs.getString(19));
								st4.setString(20, rs.getString(20));

								int i3 = st4.executeUpdate();

							}

							String name = "gas";
							String email = "Croc@gmail.com";
							String sub = "s";
							String messsage = "updation is completed";

							String amount = request.getParameter("amt");

							String message1 = messsage;

							String host = "", user1 = "", pass = "";
							host = "smtp.gmail.com";
							user1 = "antonysingh15@gmail.com";
							pass ="wsfxhykjaumtbiog";
							String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
							String to = "antonysingh15@gmail.com";
							String from = email;
							String subject = sub;
							String messageText = message1;

							boolean sessionDebug = true;

							Properties props = System.getProperties();
							props.put("mail.host", host);
							props.put("mail.transport.protocol.", "smtp");
							props.put("mail.smtp.auth", "true");
							props.put("mail.smtp.", "true");
							props.put("mail.smtp.port", "465");
							props.put("mail.smtp.socketFactory.fallback", "false");
							props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
							Session mailSession = Session.getDefaultInstance(props, null);
							mailSession.setDebug(sessionDebug);
							Message msg = new MimeMessage(mailSession);
							msg.setFrom(new InternetAddress(from));
							InternetAddress[] address = {new InternetAddress(to)};
							msg.setRecipients(Message.RecipientType.TO, address);
							msg.setSubject(subject);
							msg.setContent(messageText, "text/html");
							Transport transport = mailSession.getTransport("smtp");
							transport.connect(host, user1, pass);

							try {
								transport.sendMessage(msg, msg.getAllRecipients());
							} catch (Exception err) {
								out.println("message not successfully sended");
							}
							transport.close();

							String qqt = "update customerorderlogin set status='pending',Deal='pending' where email='Croc@gmail.com'";
							con.prepareStatement(qqt).executeUpdate();

							if (i > 0) {
	%><script>
			alert('Crocs Brand upload sucessfully')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}} else {
	%><script>
				alert('EmailId Not DealClosed')
				window.location = "cusO_home.jsp"
			</script>
	<%
		}

						}
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		else if (l2.contains(user) && user.equalsIgnoreCase("Ssj@gmail.com")) {
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
				String qt = "select * from productorreq where BrandEmailID='Ssj@gmail.com'";
				ResultSet ss = con.prepareStatement(qt).executeQuery();
				System.out.print("first");
				int sum = 0;
				if (ss.next()) {
					if (ss.getString(13).equalsIgnoreCase("closed")) {
						System.out.print("second loop");
				  String del = "DELETE FROM ssjproduct";
				  String del2="delete from ssjproduct_encry";
				  
						 PreparedStatement sg= con.prepareStatement(del);
						 PreparedStatement str=con.prepareStatement(del2);
						 int jk=sg.executeUpdate(); 
						 int ks=str.executeUpdate();
						 
								 
						 if(((jk>0 )&&(ks>0))  ||  ((jk==0)||(ks==0)))
						 {
						 
						 System.out.print("second loop  "+    "               "+jk); 

						String csv = "E:/workspace/BtoB/BtoB/FashionBolt";
						String csvFilePath = csv + "//WebContent//fashioncsv//ssjClientBrandorder.csv";
						String qry = "LOAD DATA INFILE '" + csvFilePath + "'"
								+ "INTO TABLE ssjproduct FIELDS TERMINATED BY ','" + "OPTIONALLY ENCLOSED by '\"'"
								+ "IGNORE 1 LINES";

						PreparedStatement st = con.prepareStatement(qry);
						int i = st.executeUpdate();

						System.out.print("third loop");
						if (i > 0)

						{

							{
								String g1 = "select * from ssjproduct";
								ResultSet rs = con.prepareStatement(g1).executeQuery();

								while (rs.next()) {
									String g2 = "insert into ssjproduct_encry values((DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
											+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')))";

									PreparedStatement st4 = con.prepareStatement(g2);
									st4.setString(1, rs.getString(1));
									st4.setString(2, rs.getString(2));
									st4.setString(3, rs.getString(3));
									st4.setString(4, rs.getString(4));
									st4.setString(5, rs.getString(5));
									st4.setString(6, rs.getString(6));
									st4.setString(7, rs.getString(7));
									st4.setString(8, rs.getString(8));
									st4.setString(9, rs.getString(9));
									st4.setString(10, rs.getString(10));
									st4.setString(11, rs.getString(11));
									st4.setString(12, rs.getString(12));
									st4.setString(13, rs.getString(13));
									st4.setString(14, rs.getString(14));
									st4.setString(15, rs.getString(15));
									st4.setString(16, rs.getString(16));
									st4.setString(17, rs.getString(17));
									st4.setString(18, rs.getString(18));
									st4.setString(19, rs.getString(19));
									st4.setString(20, rs.getString(20));

									int i3 = st4.executeUpdate();

								}
								String name = "ssj Brand";
								String email = "Ssj@gmail.com";
								String sub = "sending";
								String messsage = "updation is completed";

								String amount = request.getParameter("amt");

								String message1 = messsage;

								String host = "", user1 = "", pass = "";
								host = "smtp.gmail.com";
								user1 = "antonysingh15@gmail.com";
								pass = "wsfxhykjaumtbiog";
								String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
								String to = "antonysingh15@gmail.com";
								String from = email;
								String subject = sub;
								String messageText = message1;

								boolean sessionDebug = true;

								Properties props = System.getProperties();
								props.put("mail.host", host);
								props.put("mail.transport.protocol.", "smtp");
								props.put("mail.smtp.auth", "true");
								props.put("mail.smtp.", "true");
								props.put("mail.smtp.port", "465");
								props.put("mail.smtp.socketFactory.fallback", "false");
								props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
								Session mailSession = Session.getDefaultInstance(props, null);
								mailSession.setDebug(sessionDebug);
								Message msg = new MimeMessage(mailSession);
								msg.setFrom(new InternetAddress(from));
								InternetAddress[] address = {new InternetAddress(to)};
								msg.setRecipients(Message.RecipientType.TO, address);
								msg.setSubject(subject);
								msg.setContent(messageText, "text/html");
								Transport transport = mailSession.getTransport("smtp");
								transport.connect(host, user1, pass);

								try {
									transport.sendMessage(msg, msg.getAllRecipients());
								} catch (Exception err) {
									out.println("message not successfully sended");
								}
								transport.close();

								if (i > 0) {
	%><script>
			alert('Ssj Brand upload sucessfully')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}

							}
						}} else {
	%><script>
			alert('EmailId Not DealClosed')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}
					}
				}
			}

			catch (Exception ej) {
				ej.printStackTrace();
			}

		}

		
		
		
		
		
		
		
		
		
		
		
		else if (l2.contains(user) && user.equalsIgnoreCase("Ssj@gmail.com")) {
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
				String qt = "select * from productorreq where BrandEmailID='Ssj@gmail.com'";
				ResultSet ss = con.prepareStatement(qt).executeQuery();
				System.out.print("first");
				int sum = 0;
				if (ss.next()) {
					if (ss.getString(13).equalsIgnoreCase("closed")) {
						System.out.print("second loop");
				  String del = "DELETE FROM ssjproduct";
				  String del2="delete from ssjproduct_encry";
				  
						 PreparedStatement sg= con.prepareStatement(del);
						 PreparedStatement str=con.prepareStatement(del2);
						 int jk=sg.executeUpdate(); 
						 int ks=str.executeUpdate();
						 
								 
						 if(((jk>0 )&&(ks>0))  ||  ((jk==0)||(ks==0)))
						 {
						 
						 System.out.print("second loop  "+    "               "+jk); 

						String csv = "E:/workspace/BtoB/BtoB/FashionBolt";
						String csvFilePath = csv + "//WebContent//fashioncsv//ssjClientBrandorder.csv";
						String qry = "LOAD DATA INFILE '" + csvFilePath + "'"
								+ "INTO TABLE ssjproduct FIELDS TERMINATED BY ','" + "OPTIONALLY ENCLOSED by '\"'"
								+ "IGNORE 1 LINES";

						PreparedStatement st = con.prepareStatement(qry);
						int i = st.executeUpdate();

						System.out.print("third loop");
						if (i > 0)

						{

							{
								String g1 = "select * from ssjproduct";
								ResultSet rs = con.prepareStatement(g1).executeQuery();

								while (rs.next()) {
									String g2 = "insert into ssjproduct_encry values((DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
											+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')))";

									PreparedStatement st4 = con.prepareStatement(g2);
									st4.setString(1, rs.getString(1));
									st4.setString(2, rs.getString(2));
									st4.setString(3, rs.getString(3));
									st4.setString(4, rs.getString(4));
									st4.setString(5, rs.getString(5));
									st4.setString(6, rs.getString(6));
									st4.setString(7, rs.getString(7));
									st4.setString(8, rs.getString(8));
									st4.setString(9, rs.getString(9));
									st4.setString(10, rs.getString(10));
									st4.setString(11, rs.getString(11));
									st4.setString(12, rs.getString(12));
									st4.setString(13, rs.getString(13));
									st4.setString(14, rs.getString(14));
									st4.setString(15, rs.getString(15));
									st4.setString(16, rs.getString(16));
									st4.setString(17, rs.getString(17));
									st4.setString(18, rs.getString(18));
									st4.setString(19, rs.getString(19));
									st4.setString(20, rs.getString(20));

									int i3 = st4.executeUpdate();

								}
								String name = "ssj Brand";
								String email = "Ssj@gmail.com";
								String sub = "sending";
								String messsage = "updation is completed";

								String amount = request.getParameter("amt");

								String message1 = messsage;

								String host = "", user1 = "", pass = "";
								host = "smtp.gmail.com";
								user1 = "antonysingh15@gmail.com";
								pass = "wsfxhykjaumtbiog";
								String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
								String to = "antonysingh15@gmail.com";
								String from = email;
								String subject = sub;
								String messageText = message1;

								boolean sessionDebug = true;

								Properties props = System.getProperties();
								props.put("mail.host", host);
								props.put("mail.transport.protocol.", "smtp");
								props.put("mail.smtp.auth", "true");
								props.put("mail.smtp.", "true");
								props.put("mail.smtp.port", "465");
								props.put("mail.smtp.socketFactory.fallback", "false");
								props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
								Session mailSession = Session.getDefaultInstance(props, null);
								mailSession.setDebug(sessionDebug);
								Message msg = new MimeMessage(mailSession);
								msg.setFrom(new InternetAddress(from));
								InternetAddress[] address = {new InternetAddress(to)};
								msg.setRecipients(Message.RecipientType.TO, address);
								msg.setSubject(subject);
								msg.setContent(messageText, "text/html");
								Transport transport = mailSession.getTransport("smtp");
								transport.connect(host, user1, pass);

								try {
									transport.sendMessage(msg, msg.getAllRecipients());
								} catch (Exception err) {
									out.println("message not successfully sended");
								}
								transport.close();

								if (i > 0) {
	%><script>
			alert('Ssj Brand upload sucessfully')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}

							}
						}} else {
	%><script>
			alert('EmailId Not DealClosed')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}
					}
				}
			}

			catch (Exception ej) {
				ej.printStackTrace();
			}

		}
		
		
		
		else if (l2.contains(user) && user.equalsIgnoreCase("Viendia@gmail.com")) {
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
				String qt = "select * from productorreq where BrandEmailID='Viendia@gmail.com'";
				ResultSet ss = con.prepareStatement(qt).executeQuery();
				System.out.print("first");
				int sum = 0;
				if (ss.next()) {
					if (ss.getString(13).equalsIgnoreCase("closed")) {
						System.out.print("second loop");
				  String del = "DELETE FROM viendiaproduct";
				  String del2="delete from viendiaproduct_encry";
				  
						 PreparedStatement sg= con.prepareStatement(del);
						 PreparedStatement str=con.prepareStatement(del2);
						 int jk=sg.executeUpdate(); 
						 int ks=str.executeUpdate();
						 
								 
						 if(((jk>0 )&&(ks>0))  ||  ((jk==0)||(ks==0)))
						 {
						 
						 System.out.print("second loop  "+    "               "+jk); 

						String csv = "E:/workspace/BtoB/BtoB/FashionBolt";
						String csvFilePath = csv + "//WebContent//fashioncsv//ssjClientBrandorder.csv";
						String qry = "LOAD DATA INFILE '" + csvFilePath + "'"
								+ "INTO TABLE ssjproduct FIELDS TERMINATED BY ','" + "OPTIONALLY ENCLOSED by '\"'"
								+ "IGNORE 1 LINES";

						PreparedStatement st = con.prepareStatement(qry);
						int i = st.executeUpdate();

						System.out.print("third loop");
						if (i > 0)

						{

							{
								String g1 = "select * from viendiaproduct";
								ResultSet rs = con.prepareStatement(g1).executeQuery();

								while (rs.next()) {
									String g2 = "insert into viendiaproduct_encry values((DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
											+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
											+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')))";

									PreparedStatement st4 = con.prepareStatement(g2);
									st4.setString(1, rs.getString(1));
									st4.setString(2, rs.getString(2));
									st4.setString(3, rs.getString(3));
									st4.setString(4, rs.getString(4));
									st4.setString(5, rs.getString(5));
									st4.setString(6, rs.getString(6));
									st4.setString(7, rs.getString(7));
									st4.setString(8, rs.getString(8));
									st4.setString(9, rs.getString(9));
									st4.setString(10, rs.getString(10));
									st4.setString(11, rs.getString(11));
									st4.setString(12, rs.getString(12));
									st4.setString(13, rs.getString(13));
									st4.setString(14, rs.getString(14));
									st4.setString(15, rs.getString(15));
									st4.setString(16, rs.getString(16));
									st4.setString(17, rs.getString(17));
									st4.setString(18, rs.getString(18));
									st4.setString(19, rs.getString(19));
									st4.setString(20, rs.getString(20));

									int i3 = st4.executeUpdate();

								}
								String name = "Viendia";
								String email = "Viendia@gmail.com";
								String sub = "update";
								String messsage = "updation is completed";
								String amount = request.getParameter("amt");

								String message1 = messsage;

								String host = "", user1 = "", pass = "";
								host = "smtp.gmail.com";
								user1 = "antonysingh15@gmail.com";
								pass = "wsfxhykjaumtbiog";
								String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
								String to = "antonysingh15@gmail.com";
								String from = email;
								String subject = sub;
								String messageText = message1;

								boolean sessionDebug = true;

								Properties props = System.getProperties();
								props.put("mail.host", host);
								props.put("mail.transport.protocol.", "smtp");
								props.put("mail.smtp.auth", "true");
								props.put("mail.smtp.", "true");
								props.put("mail.smtp.port", "465");
								props.put("mail.smtp.socketFactory.fallback", "false");
								props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
								Session mailSession = Session.getDefaultInstance(props, null);
								mailSession.setDebug(sessionDebug);
								Message msg = new MimeMessage(mailSession);
								msg.setFrom(new InternetAddress(from));
								InternetAddress[] address = {new InternetAddress(to)};
								msg.setRecipients(Message.RecipientType.TO, address);
								msg.setSubject(subject);
								msg.setContent(messageText, "text/html");
								Transport transport = mailSession.getTransport("smtp");
								transport.connect(host, user1, pass);

								try {
									transport.sendMessage(msg, msg.getAllRecipients());
								} catch (Exception err) {
									out.println("message not successfully sended");
								}
								transport.close();

								if (i > 0) {
	%><script>
			alert('viendia Brand upload sucessfully')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}

							}
						}} else {
	%><script>
			alert('EmailId Not DealClosed')
			window.location = "cusO_home.jsp"
		</script>
	<%
		}
					}
				}
			}

			catch (Exception ej) {
				ej.printStackTrace();
			}

		}
		
	



		else {
	%><script>
		alert('EmailId Not DealClosed/in pending process')
		window.location = "cusO_home.jsp"
	</script>
	<%
		}
	%>




</body>
</html>