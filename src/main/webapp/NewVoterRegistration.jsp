<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
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
	.a{
	border: solid 2px green;
	}
	a{
	text-decoration: none;
	color: white;
	}
	.input{
	display: grid;
	grid-template-columns: 20% 5% 0.7fr;
	width: 30%;
	align-items: flex-start;
	}
	label {
	text-align: left;
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
	<div class="a">
		<center>
			<h1>New Voter Registration</h1>
			<br>
			<form action="signup" 
				style="display: flex; flex-direction: column; align-items: center;">
				<div class="input">
					<label>First Name</label><span>:</span><input type="text" placeholder="Enter Your First Name" name="firstname"  required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Last Name</label><span>:</span><input type="text" placeholder="Enter Your Last Name" name="lastname" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>DOB</label><span>:</span><input type="date" placeholder="Enter Your DOB" name="dob" required="required">
				</div>
				<br><br>
				<div >
					<label>Gender</label>:<input type="radio" value="male" name="gender" required="required">Male&nbsp;&nbsp;
						<input type="radio" value="female" name="gender" required="required">Female
				</div>
				<br><br>
				<div class="input">
					<label>Aadhar No</label><span>:</span><input type="text" placeholder="Enter Your Aadhar no" name="aadharno" pattern="[0-9]{12}" title="Must contains numbers only" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Pan No</label><span>:</span><input type="text" placeholder="Enter Your Pan no" name="panno" pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Email id</label><span>:</span><input type="email" placeholder="Enter your email id" name="emailid" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Mobile No</label><span>:</span><input type="tel" placeholder="Enter Phone No" name="mobileno" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Address</label><span>:</span><input type="text" placeholder="Enter Your Address" name="address" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Username</label><span>:</span><input type="text" placeholder="Enter your Password" name="username" required="required">
				</div>
				<br><br>
				<div class="input">
					<label>Password</label><span>:</span><input type="password" placeholder="Enter your Password" name="password" required="required">
				</div>
				<br><br>
				<input type="submit" value="Signup">
			</form>
			<br><br>
			<%
				String msg = (String) request.getAttribute("message");
				if(msg!=null)
				{
			%>
					<h2 style="color: green;"><%= msg%></h2>
			<%
				}
			%>
		</center>
	</div>
</body>
</html>