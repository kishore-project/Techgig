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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  String Offer=null,Disprice=null;int Calprice=0; int Cal=0 ,a=0;	float cc=0,ab=0,calcution=0,f=0;
String em=(String)session.getAttribute("email");
System.out.println("em"+"    "+em);
String Price=(String)session.getAttribute("upOrgprice");
System.out.println("boltprive"+"    "+Price);
String dupImg=(String)session.getAttribute("upOrgimg");
System.out.println("boltdupImg"+"    "+dupImg);
String Discount=(String)session.getAttribute("upOrgDisnt");
System.out.println("boltdisnt"+"    "+Discount);
char[] ch=Price.toCharArray();
int i=0;
String	nPrice="";
while(i<ch.length)
 {   

 if(!Character.isAlphabetic(ch[i]) && (ch[i] >= '0' && ch[i] <= '9'))
  {
    nPrice=nPrice+ch[i];
	 i++;
	  }
 else
     {
	  i++;
	   }
		 } 
//System.out.println("nPrice"+"    "+nPrice);
		 Offer=Discount;
		
			 char [] ch1=Offer.toCharArray();
			   int j=0;
			   String nOffer="";
				 while(j<ch1.length)
				 {   
					 if((ch1[j] >= '0' && ch1[j] <= '9') && ch1[j] != '%')
				 {
						 nOffer=nOffer+ch1[j];
					 j++;
					 
				 }
					 else{
						 j++;
					 }
				 } 
				// System.out.println("nOffer"+"    "+nOffer);
				  Cal=Integer.parseInt(nPrice);
				 cc=Cal;
				System.out.println("Cal"+"    "+Cal);
	 a=Integer.parseInt(nOffer);
	 System.out.println("a"+"    "+a);
	 ab=a;
	
	System.out.println("ab"+"    "+ab);
			 f=(ab/100); 
			System.out.println("f"+"    "+f);
			
			    calcution=(Cal*f);
			   System.out.println("calculation"+"  "+calcution);
		  Calprice=(int)calcution;
		 System.out.println("Calprice"+"      "+Calprice);
		 Disprice=Integer.toString(Calprice);
try
{
		 Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root"); 
		 String qr="update cartproducts set Lamount='"+Disprice+"' where userCart= '"+em+"' and image='"+dupImg+"' ";
	/* 	 session.setAttribute("imag",dupImg); */
PreparedStatement ps2=con.prepareStatement(qr);
ps2.executeUpdate();
		
	
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
		%>
</body>
</html>