
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
       <%@page import ="javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">view Admin Bargain Request Details</h2>
                </div>
                <div class="card-body">
               
                <%
                String SelProcss=null,reqBname=null,isdeal=null;
                String mailid=(String)session.getAttribute("mailto");
                System.out.println("mailto"+"     "+mailid);
            
              
                PrintWriter ou=response.getWriter();
                try
			     {
			    Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
		
           /*      String qry="select username from customerorderlogin where email='"+mailid+"'";
                PreparedStatement pd=con.prepareStatement(qry);
                ResultSet rr=pd.executeQuery();
            
                reqBname=rr.getString(1); */
             
                //logger.info("reqBname------>"+"     "+reqBname);
                
                String qq="select * from  productorreq where BrandEmailID='"+mailid+"'";
                PreparedStatement pp=con.prepareStatement(qq);
                ResultSet rset=pp.executeQuery(); 
                if(rset.next())
                {
                SelProcss=rset.getString(12);
             
                System.out.println("isdeal"+"     "+  SelProcss);
                
                
                
                isdeal=rset.getString(13);
                System.out.println("isdeal"+"     "+isdeal);
                //logger.info("selprocss------>"+"     "+SelProcss);
                
                }
               
                
                if(SelProcss.equals("Rejected") || SelProcss.equalsIgnoreCase("rejected")||SelProcss.equalsIgnoreCase("pending"))
                {
                	%>
                	<script>
                	alert("Acceptance Details Successfully Send to Email");
                	window.location="cusO_home.jsp.jsp";
                	</script>
                	<% 
                	RequestDispatcher rt=request.getRequestDispatcher("cusO_home.jsp");
                	rt.forward(request,response);
                	
                }
   
                
                
                
                else
                {
           if( (isdeal.equalsIgnoreCase(null)) || (isdeal.equalsIgnoreCase("pending")) && SelProcss.equalsIgnoreCase("Accepted")  )
           {
            
          
                try
			     {
			   
                	String qu="select * from bargainprod where BrandMailId='"+ mailid+"'";
  	   			  PreparedStatement psp=con.prepareStatement(qu);
  	   			  ResultSet rsp=psp.executeQuery();
  	   			 
  	                  if(rsp.next())
  	                  {
				
				String query2="select * from productorreq where BrandEmailID='"+mailid+"'";
			  PreparedStatement ps=con.prepareStatement(query2);
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
			  {
                %>
                 <form action="updBargainForCus_Ord.jsp" method="post">
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
                            <div class="name">TotPrice</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="totprice" value=<%=rs.getString(6)%>>
                                </div>
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="name">people</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="gen" value=<%=rs.getString(7)%>>
                                </div>
                            </div>
                        </div>
                        
                         <div class="form-row">
                            <div class="name">BargainAmount</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="qun" value=<%=rsp.getString(6)%>>
                                </div>
                            </div>
                        </div>

                   
                        <div class="form-row">
                            <div class="name">Bargain</div>
                            
                            <div class="value">
                                <div class="input-group">
                                   <select name="disll">
                                            <option disabled="disabled" selected="selected">Choose </option>
                                            <option>Yes</option>
                                             <option>No</option>
                                        </select>
                                   
                                   
                                </div>
                            </div>
                        </div>
                        <%session.setAttribute("stbg","gen") ;%>
                        <div>
                       
                            <button class="btn btn--radius-2 btn--red"  onclick="demo()">Bargain</button>
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
        	/*  <script>
        	   alert('bargain deal off sucessfull')
        	   </script> */
   
           RequestDispatcher rdm=request.getRequestDispatcher("testsucess.jsp");
           rdm.include(request, response);
           }
           
                
           }
			     }
                catch(Exception e)
                {
                	e.printStackTrace();
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