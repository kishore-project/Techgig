
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
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="Sttab_assert/fonts/icomoon/style.css">

    <link rel="stylesheet" href="Sttab_assert/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Sttab_assert/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="Sttab_assert/css/style.css">
<Style>table,
table td {
  border: 1px solid #cccccc;
}

td {
  height: 80px;
  width: 160px;
  text-align: center;
  vertical-align: middle;
}</Style>
    <title>Table #8</title>
  </head>
  <body>
  

  <div class="content">
    
    <div class="container">
      <h2 class="mb-5">STATERGIES</h2>
      <div class="table-responsive custom-table-responsive">

        <table class="table custom-table">
        <% 
        
        try
    	{
    		
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
        String qry="select * from statg";
    	PreparedStatement p=con.prepareStatement(qry); 
        ResultSet rs=p.executeQuery();
        while(rs.next())
        {
        %>
        
        
          <thead>
       
            <tr>  
   <th><%=rs.getString(2)%></th>   
              <th scope="col">
                <label class="control control--checkbox">
                 
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <th scope="col"><%=rs.getString(1)%></th>
          
            </tr>
          </thead>
          <tbody>
           <!--  <tr scope="row">
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              <td>
                1392
              </td>
              <td><a href="#">James Yates</a></td>
              <td>
                Web Designer
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+63 983 0962 971</td>
              <td>NY University</td>
            </tr>
            <tr class="spacer"><td colspan="100"></td></tr>
            <tr>
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <td>4616</td>
              <td><a href="#">Matthew Wasil</a></td>
              <td>
                Graphic Designer
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+02 020 3994 929</td>
              <td>London College</td>
            </tr>
            <tr class="spacer"><td colspan="100"></td></tr>
            <tr>
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <td>9841</td>
              <td><a href="#">Sampson Murphy</a></td>
              <td>
                Mobile Dev
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+01 352 1125 0192</td>
              <td>Senior High</td>
            </tr>
            <tr class="spacer"><td colspan="100"></td></tr>
            <tr>
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <td>9548</td>
              <td><a href="#">Gaspar Semenov</a></td>
              <td>
                Illustrator
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+92 020 3994 929</td>
              <td>College</td>
            </tr>
            <tr class="spacer"><td colspan="100"></td></tr>
            <tr>
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <td>4616</td>
              <td><a href="#">Matthew Wasil</a></td>
              <td>
                Graphic Designer
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+02 020 3994 929</td>
              <td>London College</td>
            </tr>
            <tr class="spacer"><td colspan="100"></td></tr>
            <tr>
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <td>9841</td>
              <td><a href="#">Sampson Murphy</a></td>
              <td>
                Mobile Dev
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+01 352 1125 0192</td>
              <td>Senior High</td>
            </tr>
            <tr class="spacer"><td colspan="100"></td></tr>
            <tr>
              <th scope="row">
                <label class="control control--checkbox">
                  <input type="checkbox"/>
                  <div class="control__indicator"></div>
                </label>
              </th>
              
              <td>9548</td>
              <td><a href="#">Gaspar Semenov</a></td>
              <td>
                Illustrator
                <small class="d-block">Far far away, behind the word mountains</small>
              </td>
              <td>+92 020 3994 929</td>
              <td>College</td>
            </tr> -->
            <% 
        }
    	}
        
            catch(Exception e)
            {
            	e.printStackTrace();
            }
             %>
          </tbody>
        </table>
      </div>


    </div>

  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>