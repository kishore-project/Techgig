<%-- <%@ page import="res.BarChartExample"%> --%>
<%@ page import="org.jfree.chart.ChartFactory"%>
<%@ page import="org.jfree.chart.ChartFrame"%>
<%@ page import="org.jfree.chart.JFreeChart"%>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.chart.plot.CategoryPlot"%>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@ page import="java.awt.Color"%>

<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
 <%--  <% BarChartExample calculator = new BarChartExample(); --%>
 <%
 String mail = request.getParameter("smail");
 System.out.println("name"+mail);
 BarRenderer renderer = null;
 %>
 
 
  
  
  
  
  <%  
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
		String s1 = "select * from productorreq where selcprocess='Accepted' and Deal='closed'" ;


		Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(s1);
	DefaultCategoryDataset dataset = new DefaultCategoryDataset();
	 while (rs.next()){
		int a=Integer.parseInt(rs.getString("totPrice"));
		
		dataset.setValue(a,"", rs.getString("upddate"));
		
		
		
		
	
	JFreeChart chart = ChartFactory.createBarChart("Current Sample Test Result","", "Range", dataset, PlotOrientation.VERTICAL,false, true, false);
 
	chart.setBackgroundPaint(Color.white);
	chart.getTitle().setPaint(Color.blue);
 
	CategoryPlot p = chart.getCategoryPlot();
 
	p.setRangeGridlinePaint(Color.GREEN);
 
	ChartFrame framel = new ChartFrame("Current details",chart);
	framel.setVisible(true);
	framel.setSize(1920,1150);
	 renderer = new BarRenderer();
	    Paint p1 = new GradientPaint(
	            0.0f, 0.0f, new Color(16, 89, 172), 0.0f, 0.0f, new Color(201, 201, 244));
	    renderer.setSeriesPaint(1, p1);

	    Paint p2 = new GradientPaint(
	            0.0f, 0.0f, new Color(255, 35, 35), 0.0f, 0.0f, new Color(255, 180, 180));
	    renderer.setSeriesPaint(2, p2);

	    p.setRenderer(renderer);
		try {
	        final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
	        final File file1 = new File("D://curr_barchart.png" );
	        ChartUtilities.saveChartAsPNG(file1, chart, 1920, 1150, info);
	        %><script> window.location="dc_Homepag.jsp"</script><%
	    } catch (Exception e) {
	        out.println(e);
	    }
	
 }


 
  %>
  
  
  
  
  
  <script>
//alert("OCEANOGRAPHER REGISTRATION ACCEPTED SUCCESSFULLY ");

</script>
  
</body>
</html>