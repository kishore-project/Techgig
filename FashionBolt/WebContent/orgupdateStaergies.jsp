<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob" %>
<%@page import="java.io.OutputStream" %>
<%@page import="java.io.*" %>
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
String updat=request.getParameter("upd");




try
{
	
	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	
		int sum=0;
		
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
		
 */
 String csv = "E:/Din_workspace/FashionBolt";
	String csvFilePath = csv+"//WebContent//startstagery//Statergie.csv";
	String qry =  "LOAD DATA INFILE '"+csvFilePath+"'" +
 	       "INTO TABLE statdataup FIELDS TERMINATED BY ','" +
 	       "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES";
	
	

/* 	String cpath="E:/Thilak/FashionBolt";
 String csvFilePath=cpath+"\\fashioncsv\\FashionDataset.csv"; */
 
// String dirName =context.getRealPath("\\fashioncsv\\FashionDataset.csv");
	//	String query="LOAD DATA LOCAL INFILE '"+ dirName+"'"+"  INTO TABLE update_boltzorder ";
		PreparedStatement st=con.prepareStatement(qry);
		int i=st.executeUpdate();
		System.out.println(i);
		if(i>0)
		{		

			ou.print("<html><body><script>alert('startstatergies sucessfully') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("startupslogs.jsp");
			rd.include(request, response);
			
			}
			else
			{
				ou.print("<html><body><script>alert('upload unsucessfully') </script></body></html>");
				RequestDispatcher rd = request.getRequestDispatcher("ad_home.jsp");
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