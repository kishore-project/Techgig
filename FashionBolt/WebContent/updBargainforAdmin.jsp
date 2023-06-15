
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
        <%@page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="cus_ordassert/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="cus_ordassert/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="cus_ordassert/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="cus_ordassert/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="cus_ordassert/css/main.css" rel="stylesheet" media="all">
    <script>
    function onfunction()
    {
    let b=true;
    var c1=document.getElementById("cal").innerHTML ; 
    var c2=document.getElementById("cal2").innerHTML  ;
    var c3=(c1>c2==b);  
    let x=c1/2;
    if(c3===(c1-c2)>=x)
    	{
    
    		alert('Please enter amount greater than 50% cusOrd')	
    		
    	}

    }
    </script>
    
    
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Bargain to Client Request Details</h2>
                </div>
                <div class="card-body">
                <form action="updateCusBarg.jsp" method="post">
                <%
                PrintWriter ou=response.getWriter();
               String Bmail=(String)session.getAttribute("mailto");
                System.out.println("Bmail"+"    "+Bmail);
          String Barg=request.getParameter("disll");
          System.out.println("Barg"+"    "+Barg);
          if(Barg.equalsIgnoreCase("yes"))   
          {
          try
			     {
			    Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
				
				String qu="select * from bargainprod where BrandMailId='"+Bmail+"'";
	   			  PreparedStatement psp=con.prepareStatement(qu);
	   			  ResultSet rsp=psp.executeQuery();
	   			 
	                  if(rsp.next())
	                  {
					  
				
				String query2="select * from productorreq where BrandEmailID='"+Bmail+"'";
			  PreparedStatement ps=con.prepareStatement(query2);
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
			  
			  {
                %>
                        <div class="form-row m-b-55">
                            <div class="name">BrandName</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="brandname" value=<%=rs.getString(2) %>>
                                            <label class="label--desc">Product name</label>
                                        </div>
                                    </div>
                                    <!-- <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="last_name">
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <%   String s="admin"; %>
                        <input type="hidden" name="ad" value="<%=s %>">
                        <div class="form-row">
                            <div class="name">Quantity</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="qun" value=<%=rs.getString(3)%>>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Currency</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="curr" value=<%=rs.getString(4)%>>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">MaxPrice</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="mmrp" value=<%=rs.getString(5)%>>
                                </div>
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="name">Total Price</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="totprice" value=<%=rs.getString(6)%>>
                                </div>
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="name">People</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="gen" value=<%=rs.getString(7)%>>
                                </div>
                            </div>
                        </div>
                        
                          <div class="form-row m-b-55">
                            <div class="name">Bargain Amount
                            </div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                              <input class="input--style-5" type="text" name="qun" value=<%=rsp.getString(6)%> id="cal" maxlength="7">

                                            <label class="label--desc">BargainAmountForAdmin</label>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                        
                        
                        <%-- 
                          <div class="form-row">
                            <div class="name">BargainAmountForAdmin</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="qun" value=<%=rsp.getString(6)%> id="cal">
                                </div>
                            </div>
                        </div> --%>

                   
                        <div class="form-row">
                            <div class="name">Bargain Admin</div>
                            
                            <div class="value">
                                <div class="input-group">
                                <input class="input--style-5" type="text" name="gen1" id="cal2">
                                   
                                </div>
                            </div>
                        </div>
                        <%session.setAttribute("stbg","disll") ;%>
                        <div>
                       
                            <button class="btn btn--radius-2 btn--red" type="submit" onclick="onfunction">Bargain</button>
                        </div>
                        
                   
                    <%
                    }
				  }
			     }
                catch(Exception e)
                {
                e.printStackTrace();	
                }
          }
          else
          {
        	  Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	  
				String isDeal="closed";
				String query2="select * from bargainprod where BrandMailId='"+Bmail+"'";
			  PreparedStatement ps=con.prepareStatement(query2);
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
			  
			  { 
				  String query="update  productorreq  set totPrice='"+rs.getString(6)+"' where BrandEmailID='"+rs.getString(1)+"'";
				  String qry3="update  productorreq  set Deal='"+isDeal+"' where BrandEmailID='"+rs.getString(1)+"'";
						  PreparedStatement p=con.prepareStatement(query);
						  PreparedStatement p2=con.prepareStatement(qry3);
						  int status=p.executeUpdate();
						  int status2=p2.executeUpdate();
			  if(status>0 && status2>0)
			  {
					String PKEY = "101451sda";
  String qt="select * from productorreq where BrandEmailID='"+rs.getString(1)+"' and Deal='closed'";
  PreparedStatement pq=con.prepareStatement(qt);
  ResultSet v=pq.executeQuery();
  while(v.next())
  {
	  String st="insert into productorreq_encry values((DES_ENCRYPT(? ,'" + PKEY
				+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
				+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
				+ "')),(DES_ENCRYPT(? , '" + PKEY + "')),(DES_ENCRYPT(? , '" + PKEY
				+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
				+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
				+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
				+ "')),(DES_ENCRYPT(? ,'" + PKEY + "')),(DES_ENCRYPT(? ,'" + PKEY
				+ "')))";
	  PreparedStatement stm = con.prepareStatement(st);
		stm.setString(1, v.getString(1));
		stm.setString(2, v.getString(2));
		stm.setString(3, v.getString(3));
		stm.setString(4, v.getString(4));
		stm.setString(5, v.getString(5));
		stm.setString(6, v.getString(6));
		stm.setString(7, v.getString(7));
		stm.setString(8, v.getString(8));
		stm.setString(9, v.getString(9));
		stm.setString(10, v.getString(10));
		stm.setString(11, v.getString(11));
		stm.setString(12, v.getString(12));
		stm.setString(13, v.getString(13));
		stm.setString(14, v.getString(14));
		stm.setString(15, v.getString(15));
		int i3 = stm.executeUpdate();
  }
  
			ou.print("<html><body><script>alert('Admin Closed Deal sucessfully') </script></body></html>");
				  response.sendRedirect("sentdealoff.jsp");
			  }
			  }
				
        	  
          }
          
                %>
                </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="cus_ordassert/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="cus_ordassert/vendor/select2/select2.min.js"></script>
    <script src="cus_ordassert/vendor/datepicker/moment.min.js"></script>
    <script src="cus_ordassert/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="cus_ordassert/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->