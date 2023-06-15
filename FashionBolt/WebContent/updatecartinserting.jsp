
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
<%
	  String emt = (String)session.getAttribute("toemail");
	String BrandProduct=null,dupImg=null,Price=null,Discnt=null,Pic=null,Disprice=null,Offer=null;int Calprice=0; int Cal=0 ,a=0;	float cc=0,ab=0,calcution=0,f=0;
	dupImg=request.getParameter("imagee");

	try
	{
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
	String query2="select distinct * from cartproducts where userCart='"+emt+"'";
	PreparedStatement ps1=con.prepareStatement(query2);
	ResultSet s=ps1.executeQuery();
	while(s.next())
	{
		
		String Id=s.getString("id");
		session.setAttribute("id1", Id);
		BrandProduct=s.getString(2);
		Price=s.getString(4);
		session.setAttribute("upOrgprice", Price);
		Discnt=s.getString(5);
		session.setAttribute("upOrgDisnt", Discnt);
		dupImg=s.getString(6);
		session.setAttribute("upOrgimg", dupImg);
	

		
		 String qr="update cartproducts set Lamount='"+Disprice+"' where userCart= '"+emt+"' and image='"+dupImg+"' ";
			 session.setAttribute("imag",dupImg);
		PreparedStatement ps2=con.prepareStatement(qr);
		ps2.executeUpdate();
				
	%>
				<tbody>	
				
				
											      <tr class="alert" role="alert">		      
											      <form action="updateQun.jsp" method="post">
											      <td>
											      <input type="checkbox" name="Chk" value=<%=s.getString(1)%>>checked
											      </td>
											      <th scope="row"> 
											      <%=s.getString(1)%><input type="hidden" <%=s.getString(1)%> name="id">
											      </th>	
											      <td> 
											      <%=s.getString(2)%>
											      </td>
											      
											      <td>
											      <img  src="<%=s.getString(6)%>" width=100px height=100px alt=""  class="pro-image-front">
											      </td>
											      <td> <%=s.getString(4)%></td>	  
											      <td><%=s.getString(5)%></td>
											    <!--   </form> -->
                                                 <!--  <form action="deleteCart.jsp" method="post"> <td><button>Remove</button></td>										      	
											      </form> -->
											      <td><%=s.getString(11)%></td>
											
											      
									               
									        
												<!-- <form action="updateQun.jsp" method="post">  -->
														
											     
											      	<td >   	
											      	<select name="size" >
											      	<option value="none" selected="" disabled=""><%=s.getString(7)%></option>
  <option value="32">M</option>
  <option value="36">XL</option>
  <option value="38">XXL</option>
  <option value="34">L</option>
</select></td>

									        
									         
									        	
									        	
											   
											    </tr>
											    
											  </tbody>
																
																				
																	
		<%
		}
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	</table>
				<div class="container my-3 bg-light">
        <div class="col-md-12 text-center">															  
			<!-- <form action="paymentProcss.jsp">  --><input type="submit" value="Add to WishList" class="btn btn-primary"><!-- </form>	 -->						
					</div>
					</div>	
						  <!--  </form> -->
						   </form>	
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>