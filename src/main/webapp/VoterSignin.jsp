<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signin</title>
<style type="text/css">
	.nav{
		background-color:black;
		color: white;
		display: block;
	}
	.nav ul{
	list-style: none;
	display: inline-flex;
	font-size: 20px;
	}
	.nav ul li{
	padding: 15px;
	}
	.nav ul li:hover {
	background-color: green;
	}
	#c,h2{
		color:red;
	}
	a{
	text-decoration: none;
	color: white;
	}
	body {
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
	height: 100vh;
	}

	@keyframes gradient {
		0% {
			background-position: 0% 50%;
		}
		50% {
			background-position: 100% 50%;
		}
		100% {
			background-position: 0% 50%;
		}
	}
	
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="NewVoterRegistration.jsp">New Voter Registration</a></li>
			<li><a href="VoterSignin.jsp">Voter Signin</a></li>
			<li><a href="AdminSignin.jsp">Admin Signin</a></li>
			<li>About</li>
		</ul>
	</div>
	<br>
	<div style="border: solid 2px green;">
		<center>
			<h1>Signin</h1>
			<br>
			<form action="signin" method="post">
				Email id:<input type="email" placeholder="Enter your email id" name="emailid" required="required">
				<br><br>
				Password:<input type="password" placeholder="Enter Your Password" name="password" required="required">
				<br><br>
				<input type="submit" value="Signin">
				<br><br>
			</form>
			<%
				String msg = (String)request.getAttribute("loginstatus");
				if(msg!=null)
				{
			%>
					<h2><%= msg%></h2>
			<%
				}
			%>	
		</center>
	</div>
</body>
</html>