<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.jfree.chart.ChartFactory"%>
<%@ page import="org.jfree.chart.ChartFrame"%>
<%@ page import="org.jfree.chart.JFreeChart"%>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.chart.plot.CategoryPlot"%>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@ page import="java.awt.Color"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String dat = request.getParameter("yearr");
System.out.println(dat);

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
String qry = "select * from where Year='"+dat+"'";
PreparedStatement ps = con.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
if(rs.next()){
int a = Integer.parseInt(""+rs.getString(3)+"");
int b = Integer.parseInt(""+rs.getString(4)+"");
int c = Integer.parseInt(""+rs.getString(5)+"");
int d = Integer.parseInt(""+rs.getString(6)+"");
int e = Integer.parseInt(""+rs.getString(7)+"");
int f = Integer.parseInt(""+rs.getString(8)+"");
int g = Integer.parseInt(""+rs.getString(9)+"");
int h = Integer.parseInt(""+rs.getString(10)+"");
int i = Integer.parseInt(""+rs.getString(11)+"");
int j = Integer.parseInt(""+rs.getString(12)+"");
int k = Integer.parseInt(""+rs.getString(13)+"");


DefaultCategoryDataset dataset = new DefaultCategoryDataset();
dataset.setValue(a,"","Minor Injuries");
dataset.setValue(b,"","Severe Injuries");
dataset.setValue(c,"","Fatal Casualities");
dataset.setValue(d,"","Total Casualities");
JFreeChart chart = ChartFactory.createBarChart("Yearly Accidents Data at year '"+dat+"'","","No of Casualities",dataset,PlotOrientation.VERTICAL,false, true,false);

chart.setBackgroundPaint(Color.white);
chart.getTitle().setPaint(Color.blue);
CategoryPlot p = chart.getCategoryPlot();
p.setRangeGridlinePaint(Color.GREEN);
ChartFrame framel = new ChartFrame("Yearly Accidents Graph",chart);
framel.setVisible(true);
framel.setSize(1920,1150);
%>
<script>
alert("Viewed Graph Successfully");
window.location="accgrep.jsp";
</script>
<%
}
else{
%>
<script>
alert("Data Not Found");
window.location="accgrep.jsp";
</script>
<%
}
%>
</body>
</html>
