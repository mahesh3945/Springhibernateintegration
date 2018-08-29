<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">

/*$(document).ready(function()
		{
	
	alert("check");
		$('#search').click(function()
		{
		 var firstname = $('#fname').val();
		 var lastname =$('#lname').val();
		 
		// alert(firstname);
		    $.ajax({url:"http://localhost:8088/practiceAjaxTwo/jsps/JdbcLogic.jsp?fname=" + firstname+ "&lname="+ lastname,		
				
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
		);*/
				$(document).ready(function()
				{
			
			//alert("check");
				$('#fname').blur(function()
				{
				 var firstname = $('#fname').val();
						 
				// alert(firstname);
				    $.ajax({url:"http://localhost:8088/practiceAjaxTwo/jsps/JdbcLogic.jsp?fname=" + firstname,		
						
						success: function(result){
								//alert(result);
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
		
		
		$(document).ready(function()
				{
			
			//alert("check");
				$('#lname').blur(function()
				{
				  var lastname =$('#lname').val();
				 
				// alert(firstname);
				    $.ajax({url:"http://localhost:8088/practiceAjaxTwo/jsps/JdbcLogic.jsp?lname=" +lastname,		
						
						success: function(result){
								//alert(result);
							if(result.indexOf('success')!=-1)
								{
				                $("#userStatus1").html("<font color=red>User not available</font>");
								}
							else
								{
								$("#userStatus1").html("<font color=green>User available</font>");
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
</head>
<body>

<form action="" >
<table align="center">
<tr><td><input id ="fname" type="text" placeholder="First Name"></td></tr>
<tr><td><div id="userStatus"></div></td></tr>
<tr><td><input id ="lname" type="text" placeholder="Last Name"></td></tr>
<tr><td><div id="userStatus1"></div></td></tr>
<tr><td><input id ="search" type="button" value="Search"></td></tr>
</table>
</form>

</body>
</html>