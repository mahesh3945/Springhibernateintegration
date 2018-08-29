
function checkFormInputs()
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var fnameformat =/^[A-Za-z]+$/;
alert(document.getElementById('city').value);
//alert(mailformat.test(document.getElementById('email').value));
alert(fnameformat.test(document.getElementById('fname').value));
if (document.getElementById('fname').value=="")
{
alert("first name is required"); 
return false;
}
else if(!fnameformat.test(document.getElementById('fname').value))
{
alert("name should be in characters");
document.getElementById('fname').value='';
document.getElementById('fname').focus();
return false;
}
else if(document.getElementById('lname').value=="")
{alert("last name is required"); 
return false;
}
else if(document.getElementById('dob').value=="")
{alert("Dob is required"); 
return false;
}
else if(document.getElementById('email').value=="")
{alert(" email is required"); 
return false;
}
else if(!mailformat.test(document.getElementById('email').value))
{
alert("email is invalid");
return false;
}
else if(document.getElementById('password').value=="")
{alert(" password is required"); 
return false;
}
else if(document.getElementById('age').value=="")
{
alert(" Age is required"); 
return false;
}
else if(document.getElementById('adres').value=="")
{
alert(" address is required"); 
return false;
}
else if(document.getElementById('cardno').value=="")
{
alert(" CardNumber is required"); 
return false;
}
}
function checkLength()
{
 var cardno = document.getElementById('cardno').value.length;
 if(cardno==16)
{
 alert("card number should be 16 digits only");
 }
}
