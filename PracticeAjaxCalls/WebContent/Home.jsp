<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
<link rel="stylesheet" type="text/css" href="CSS/Styles.css"/>
<script type="text/javascript" src="JQuery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{

		$('#email').blur(function()
		{
		 var uname = $('#email').val();
		 alert(uname);
		    $.ajax({url:"http://localhost:8088/PracticeAjaxCalls/jsps/ajaxexp.jsp?email="+uname,		
				
				success: function(result){
						alert(result);
					if(result.indexOf('success')!=-1)
						{
		                $("#userStatus").html("<font color=red>User not available</font>");
						}
					else
						{
						$("#userStatus").html("<font color=green>User available</font>");
						}
		        },
		        error: function(erdata){alert(" "+erdata.status);}
		 
				}
				);
		}
		);
		}
		);
</script>
<script type="text/javascript" src="Script/Valid.js"></script>


</head>
<body text = "red">
<div id="header">
<h4 align="right"><a href="">Login</a></h4>
   <h1 style ="color:blue" align="center" >Customer Details</h1>
</div>
<form>
<div id ="search">
<input placeholder ="Search" >
<input type ="submit">
</div>
</form>
<div id ="tablee">
<form  onsubmit="return checkFormInputs()">
<table align="right">
<tr><td><input id ="fname" placeholder ="First Name " type = "text" ></td></tr>
<tr><td><input id = "lname" placeholder = "Last Name " type = "text" ></td></tr>
<tr><td><input id = "age" class ="agee"  placeholder ="Age" type= "number" ></td></tr>
<tr><td>DateofBirth</td></tr>
<tr><td><input id = "dob" class="datewidth" type ="date"></td></tr>
<tr><td><input id = "email" class ="datewidth" placeholder = "Email" type ="text"></td></tr>
<tr><td><div id="userStatus"></div></td></tr>
<tr><td><input id = "password" class ="pass" placeholder ="Enter password" type="password"></td></tr>
<tr><td>Gender</td></tr>
<tr><td><input type="radio" name="Gender" value="Male" checked> Male
<input type="radio" name="Gender" value="FeMale">FeMale</td></tr>
<tr><td><input id = "adres" placeholder = "address"></td></tr>
<tr><td><input id = "cardno" maxlength ="16" onkeypress="checkLength()" placeholder = "Debit CardNumber"></td></tr>
<tr><td>
  <select id = "city"> 
  <option>Choose city</option> 
  <option>California</option> 
  <option>New York</option>
  <option>New Jersey</option>
</select>
</td></tr>
<tr><td><input type = "submit"></td></tr>
</table>
</form>
</div>
<div id="footer">
<h4 style ="color:blue" align ="center"> About Us</h4>
</div>
</body>
</html>