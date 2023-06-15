<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.* "%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
int totlamt=0,totqunl=0;
String id = (String)session.getAttribute("id1");
System.out.println("upid"+" "+id);
String upQun=request.getParameter("qn");

System.out.println("upqun"+" "+upQun);
String em = (String)session.getAttribute("toemail");
System.out.println("emupqn"+" "+em);
String [] size=request.getParameterValues("size");  
System.out.println("size"+" "+size.length);
String [] checItem=request.getParameterValues("Chk");
System.out.println("checItem"+" "+checItem);
PrintWriter ou=response.getWriter();
int status2=0;
int status=0;
int st=0;


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");

/* for(int i=0;i<checItem.length;i++)
{String cheqry="select  from cartproducts  where id='"+checItem[i]+"'";
PreparedStatement psd=con.prepareStatement(cheqry);
ResultSet RT=psd.executeQuery();
 */
/* while(RT.next()==false)

{
	String dupid=RT.


	String qr4="update cartproducts set isChecked='"+"unchecked"+"' where  id='"+RT.getString()+"'";
	
	PreparedStatement psm=con.prepareStatement(qr4);
	st=psm.executeUpdate();
} */


	for(int i=0;i<checItem.length;i++)
	{
	String qr3="update cartproducts set isChecked ='"+"checked"+"' where  id='"+checItem[i]+"'";
	
	PreparedStatement ps2=con.prepareStatement(qr3);
	status2=ps2.executeUpdate();
	}


for(int i=0;i<checItem.length;i++)
{
	String qr2="update cartproducts set size='"+size[i]+"' where id='"+checItem[i]+"'";
	PreparedStatement ps3=con.prepareStatement(qr2);
	status=ps3.executeUpdate();

}

try {
	String qry = "SELECT quantity,price,id FROM cartproducts  ";
	ResultSet rs = con.createStatement().executeQuery(qry);
	while(rs.next())
	{
		int qty = Integer.parseInt(rs.getString(1));
		
		int pri = Integer.parseInt(rs.getString(2));
		int id1 = rs.getInt(3);
		int res = qty*pri;
	
				String qry1 = "UPDATE cartproducts SET Lamount='"+res+"' WHERE id='"+id1+"'";
		int i = con.prepareStatement(qry1).executeUpdate();
		if(i>0) System.out.print("LAMOUNT SUCCESS");
		else System.out.print("LAMOUNT FAILED");
	}
	
	String eq="select * from cartproducts where isChecked='checked' and userCart='"+em+"'";
	ResultSet rw=con.prepareStatement(eq).executeQuery();
	while(rw.next())
	{
		 int val=Integer.parseInt(rw.getString(4));
		 int val2=Integer.parseInt(rw.getString(11));
		totqunl=totqunl+val;
				totlamt=totlamt+val2;

	}
		
	
			
	
} catch (Exception e) {
	e.printStackTrace();
}

int lqun,lamt=0;
lqun=totqunl;
session.setAttribute("needqun", lqun);
lamt=totlamt;
session.setAttribute("needamt",lamt);
if(status > 0 && status2 >0)
	{

	ou.print("<html><body><script>alert('Producted added in wishlist') </script></body></html>");
	RequestDispatcher rs=request.getRequestDispatcher("paymentpro.jsp");
	rs.forward(request, response);
	}
	else
	{
		ou.print("<html><body><script>alert('Incorrect') </script></body></html>");
	RequestDispatcher rs=request.getRequestDispatcher("boltzOrdershopping.jsp");
		rs.forward(request, response);
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

	
	
%>
</body>
</html>