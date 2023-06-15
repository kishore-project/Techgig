<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String mail=request.getParameter("name");
System.out.println(mail);
String pss=request.getParameter("password");
System.out.println(pss);

if(mail.equalsIgnoreCase("superadmin") && pss.equalsIgnoreCase("admin"))
{
	%>
	<script>
alert('Super Admin login sucessfully')
window.location="sup_adminHome.jsp" </script>
	<% 
	

}
else
{

	%>
	<script>
alert('username/password incorrect')
window.location="index.html" </script>
	<% 
}
 %>
</body>
</html>