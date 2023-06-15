

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String sub=request.getParameter("subject");
String  messsage=request.getParameter("message");


String amount = request.getParameter("amt");


String message1=messsage;

String host="", user="", pass="";
host ="smtp.gmail.com";
user ="fashionboltz@gmail.com";
pass ="omwtnqyppfsuimnq";
String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
String to ="fashionboltz@gmail.com";
String from =email;
String subject=sub;
String messageText = message1;

boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host",host);
props.put("mail.transport.protocol.","smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port","465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props,null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO,address);
msg.setSubject(subject);
msg.setContent(messageText,"text/html");
Transport transport = mailSession.getTransport("smtp");
transport.connect(host,user,pass);

try {
transport.sendMessage(msg, msg.getAllRecipients());
}
catch (Exception err) {
out.println("message not successfully sended");
}
transport.close();
%>
</body>
</html>
