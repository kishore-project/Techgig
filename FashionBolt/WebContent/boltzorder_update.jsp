<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
<%@page import="java.io.*" %>
<%@ page import="java.util.Date" %>
<%@ page import = "javax.servlet.*,java.text.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

PrintWriter ou=response.getWriter();
int i2=0;
ServletContext context = getServletContext();


Date dNow = new Date( );
SimpleDateFormat ft = new SimpleDateFormat ("E dd.MM.yyyy 'at' hh:mm:ss a");
String updat = ""+ft.format(dNow)+"";
System.out.println(updat);


try
{
	
	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	
		int sum=0;
		String qt="delete from update_boltzorder";
		con.prepareStatement(qt).executeUpdate();
		
		
		/* 	String query="insert into update_boltzorder(gender,brand,size,name,discount,price,image,sleeves)values(?,?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(query);
		st.setString();
		st.setString();
		st.setString();
		st.setString();
		st.setString();
		st.setString();
		st.setString();
		st.setString();
		st.setString();
		st.setString(); */
	/* 	int i=st.executeUpdate();
		
 */String PKEY="101451sda";
 String csv = "E:/workspace/BtoB/BtoB/FashionBolt";
	String csvFilePath = csv+"//WebContent//fashioncsv//FashionDataset.csv";
	String qry =  "LOAD DATA INFILE '"+csvFilePath+"'" +
 	       "INTO TABLE update_boltzorder FIELDS TERMINATED BY ','" +
 	       "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES";
	
	

/* 	String cpath="E:/Thilak/FashionBolt";
 String csvFilePath=cpath+"\\fashioncsv\\FashionDataset.csv"; */
 
// String dirName =context.getRealPath("\\fashioncsv\\FashionDataset.csv");
	//	String query="LOAD DATA LOCAL INFILE '"+ dirName+"'"+"  INTO TABLE update_boltzorder ";
		PreparedStatement st=con.prepareStatement(qry);
		int i=st.executeUpdate();
		System.out.println(i);
		while(i>0)
		{		

			sum=sum+1;
			System.out.println(i2 +"       update    "+updat+ "sum" +sum);
				String qry3="update update_boltzorder set UpdDate='"+updat+"' where id='"+sum+"' ";
				PreparedStatement st2=con.prepareStatement(qry3);
			 i2=st2.executeUpdate();
		
			System.out.println(i2);
		
	        i--;
	
			}	
		if(i2>0)
		{
			String g1="select * from update_boltzorder";
			ResultSet rs=con.prepareStatement(g1).executeQuery();
			
			while(rs.next())
			{
				String g2="insert into uploadboltzec values((DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? , '"+PKEY+"')),(DES_ENCRYPT(? , '"+PKEY+"')),(DES_ENCRYPT(? , '"+PKEY+"')),(DES_ENCRYPT(? , '"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')),(DES_ENCRYPT(? ,'"+PKEY+"')))";	
				
				
				PreparedStatement st4=con.prepareStatement(g2);
				st4.setString(1,rs.getString(1));
				st4.setString(2,rs.getString(2));
				st4.setString(3,rs.getString(3));
				st4.setString(4,rs.getString(4));
				st4.setString(5,rs.getString(5));
				st4.setString(6,rs.getString(6));
				st4.setString(7,rs.getString(7));
				st4.setString(8,rs.getString(8));
				st4.setString(9,rs.getString(9));
				st4.setString(10,rs.getString(10));
				st4.setString(11,rs.getString(11));
				st4.setString(12,rs.getString(12));
				st4.setString(13,rs.getString(13));
				st4.setString(14,rs.getString(14));
				st4.setString(15,rs.getString(15));
				st4.setString(16,rs.getString(16));
				st4.setString(17,rs.getString(17));
				st4.setString(18,rs.getString(18));
				st4.setString(19,rs.getString(19));
				st4.setString(20,rs.getString(20));
			
			int i3=st4.executeUpdate();
				
				
			
				
			
			}
			
			
		}
		
		
		
			if(i2>0)
			{
			ou.print("<html><body><script>alert('BOLTZ Brand order uploaded sucessfully') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("ad_homepage.jsp");
			rd.include(request, response);
			
			}
			else
			{
				ou.print("<html><body><script>alert('upload unsucessfully') </script></body></html>");
				RequestDispatcher rd = request.getRequestDispatcher("viewBoltsStatus.jsp");
				rd.include(request, response);
			}
		
}
catch(Exception e)
{
	e.printStackTrace();
}


%>
</body>
</html>