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
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Responsive Table + Detail View</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="tablsa/style.css">
<style>









.button {
  background: white;
  border: solid 2px black;
  padding: .375em 1.125em;
  font-size: 1rem;
}

.button-arounder {
  font-size: 2rem;
  background: hsl(190deg, 30%, 15%);
  color: hsl(190deg, 10%, 95%);
  
  box-shadow: 0 0px 0px hsla(190deg, 15%, 5%, .2);
  transfrom: translateY(0);
  border-top-left-radius: 0px;
  border-top-right-radius: 0px;
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
  
  --dur: .15s;
  --delay: .15s;
  --radius: 16px;
  
  transition:
    border-top-left-radius var(--dur) var(--delay) ease-out,
    border-top-right-radius var(--dur) calc(var(--delay) * 2) ease-out,
    border-bottom-right-radius var(--dur) calc(var(--delay) * 3) ease-out,
    border-bottom-left-radius var(--dur) calc(var(--delay) * 4) ease-out,
    box-shadow calc(var(--dur) * 4) ease-out,
    transform calc(var(--dur) * 4) ease-out,
    background calc(var(--dur) * 4) steps(4, jump-end);
}

.button-arounder:hover,
.button-arounder:focus {
  box-shadow: 0 4px 8px hsla(190deg, 15%, 5%, .2);
  transform: translateY(-4px);
  background: hsl(230deg, 50%, 45%);
  border-top-left-radius: var(--radius);
  border-top-right-radius: var(--radius);
  border-bottom-left-radius: var(--radius);
  border-bottom-right-radius: var(--radius);
}


</style>
</head>
<body style="background-image: url('supimg.jpg'); width:100%; height:100%; object-fit: cover;background-repeat:no-repeat;background-attachment: fixed;background-size: cover;">
<!-- partial:index.partial.html -->

<a href="sup_adminHome.jsp"><button class="button-arounder" >
Back	
</button></a>

<h1>
 Key Request
</h1>
<p>

</p>
<main>
  <table>
    <thead>
      <tr>
        <th>
        SNO
        </th>
        <th>
          Request_Name
        </th>
       
          <th>DecryptionKey</th>
          
           <th>Selection Process</th>
          <th>Area</th>
            <th>Selection</th>
      </tr>
    </thead>
    <tfoot>
      <tr>
        <th colspan='3'>
         
        </th>
      </tr>
    </tfoot>
    <tbody>
 
      <%
      Class.forName("com.mysql.jdbc.Driver");
  	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root"); 
  	String qry="select * from decryptionkey";
  	ResultSet rs=con1.prepareStatement(qry).executeQuery();
  	
  	
  	while(rs.next())
  	{
  		%> 
  		<form action="UpdateKeysAd.jsp" method="post">
  		<tr>
  		<td data-title='Provider Name'>
       <%=rs.getString(1) %>
       </td>
       <td data-title='E-mail'>
       <input type="hidden" name="user" value= "<%=rs.getString(2) %>">
       <%=rs.getString(2) %>
       </td>
        </td><td data-title='E-mail'>
       <%=rs.getString(4) %>
       </td>
       <td data-title='E-mail'>
       <%=rs.getString(3) %>
      <td data-title='E-mail'>
      <input type="hidden" name="areas" value= "<%=rs.getString(5) %>">
       <%=rs.getString(5) %>
     
       <td class='select'>
         <button  class="button-arounder"  onclick="submit" name="val" value="accepted">Accepted</button>
            <button  class="button-arounder"  onclick="submit" name="val" value="rejected">Rejected</button>
         
       </td>
      <%--   <%if(rs.getString(3).equalsIgnoreCase("Accepted")) 
       { %>
        	<td class='select'>
        <button onclick="submit">generateKey</button>
           <button onclick="submit">generateKey</button>
        
      </td>
       <%} %> --%>
  	
  	
  	</tr>
  	</form>
  	<% 
  	}
  	
  	
      
      
      
      
      
      %>
       
      
        </tbody>
  </table>
 
</main>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="tablsa/script.js"></script>

</body>
</html>

