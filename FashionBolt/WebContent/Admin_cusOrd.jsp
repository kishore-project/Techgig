<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dragging register form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script language="javascript">
function SelectRedirect(){
switch(document.getElementById('s1').value)
{
case "a":
window.location="CrocProTable.jsp";
break;
case "b":
window.location="ViendiaProTable.jsp";
break;
case "c":
window.location="SsjProTable.jsp";
break;
case "d":
window.location="CusreqAdmin.jsp";
break;
case "e":
window.location="acceptcus_rd.jsp";
break;
case "f":
window.location="viewCus_ordBargReq.jsp";
break;

default:
window.location="Admin_cusOrd.jsp";
break;
}
}
</script>
<!-- custom css file -->
<link rel="stylesheet" href="rclient/css/style.css">
<!-- //custom css file -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- google fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- //google fonts -->

</head>

<body style="background-image: url('adhome.jpg');">
<br>
<h1 style="color: black;">Client Bargain Center</h1>
<div class="agile-its">
<h2>Select Process</h2>
<div class="w3layouts">
<div class="photos-upload-view">
<form id="upload" action="#" method="POST" enctype="multipart/form-data">
<input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />
<div class="agileinfo">
</div>
<div class="agileinfo-row">
<div class="ferry ferry-from">
<center><label>Select</label></center><br>
<select style="margin-left: 155px;" name="cause" id="s1" name ="section" onChange="SelectRedirect();">
       <option value="none" selected="" disabled="">Select</option>
       <option value="a">Croc</option>
       <option value="b">Viendia</option>
       <option value="c">SSJ</option>
       <option value="d">Client Request</option>
       <option value="e">Manage Status</option>
       <option value="f">View Bargain</option>
      
</select>
</div>
<div class="clear"></div>
</div>
<div class="wthree-text">  
<label class="anim">
</label>
<div class="clear"> </div>
</div>
<a href="ad_homepage.jsp" style="margin-left: 180px;" class ="btn btn-outline-success">Go Back</a>
</form>

</div>
<div class="clear"></div>
</div>
</div>
<div class="footer">
<p><a href=""></a></p>
</div>

<!-- js files -->
<script src="rclient/js/filedrag.js"></script>
<script type="text/javascript" src="rclient/js/jquery.min.js"></script>
<!-- //js files -->

</body>
</html>