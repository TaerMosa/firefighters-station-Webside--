<%@page import="java.sql.*"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
   
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function validateForm()
{
	var user=document.login.username.value;
	var user=user.trim();
	var pass=document.login.password.value;
 
	if(user == '')
	{
		alert("Please Enter Username");
		return false;
	}
	if(pass == '')
	{
		alert("Please Enter Password");
		return false;
	}
	if(user=='Admin' && pass=='1234')
		{
		open("HomePage.jsp");
	return true;
		}
	else{
		alert("Wrong User Name Or Password");
	}
	}
</script>

<style type="text/css">
#lower {
	background:purple;
	width: 100%;
	height: 70px;
	margin-top: 30px;
}

input[type=checkbox] {
	margin-left: 20px;
	margin-top: 30px;

}

.check {
	margin-left: 3px;
}

input[name=login] {
	float: right;
	margin-right: 10px;
	margin-top: 20px;
	width: 80px;
	height: 30px;
	font-size: 14px;
	font-weight: bold;
	color: white;
	border: 1px solid;
	background-color:green 
}
a{
color:fuchsia;
font-style: italic;
font-size:medium;
}

input[type=text], input[type=password] {
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 350px;
	height: 35px;
	border: 2px solid;
	border-radius: 30px;
	font-size: 16px;
}

label {
	color:orange;
	margin-left: 18px;
	padding-top: 10px;
	font-size: 17px;
}

html, body {
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	-webkit-font-smoothing: antialiased;
	background-color:black;
}

#container {
	position: fixed;
	width: 400px;
	height: 280px;
	top: 50%;
	left: 50%;
	margin-top: -140px;
	margin-left:-180px;
	background: white;
	border: 1px thin;
	border-radius: 30px;
}
img{
margin-left: 150px;
width:100px;
height: 50px;
}
img[name=back]{
margin-left: -2px;
}
</style>
<title>LoginPage</title>


</head>

<body>
	<div  id="container">
		<form id="login" name="login" method="post" action="HomePage.jsp" >
			<img  src="pic/3.jpg">
			<a href="NewUser.jsp">Create Account</a>
			<br> <label
				for="username">Username:</label> <input type="text" 
				name="username" id="username"> <label for="password">Password:</label> <input
				type="password" name="password" id="password">

			<div id="lower">
				<input type="checkbox"><label for="checkbox">Keep me
					logged in</label> 
					<input name="login" type="button" value="Login" onclick="return validateForm()">
					

			</div>
			<!--/ lower-->
		</form>
		<a href="HomePage.jsp" style="color: black">
		<img name="back" src="pic/back.jpg"></a>
	</div>
</body>
</html>