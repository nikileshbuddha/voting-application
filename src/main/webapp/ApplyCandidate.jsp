<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply Candidate</title>
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
	width: 100%;
	height: 90%px;
	}
	.user{
		width:50%;
		float: left;
	}
	.options{
		width:50%;
		float: left;
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
			<li><a href="ApplyCandidate.jsp">Apply For Candidate</a></li>
			<li><a href="VoterSignin.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div class="a">
	<center>
		<h1>Candidate Dashboard</h1>
		<br>
		<form action="addNewCandidate">
			First Name : <input type="text" placeholder="Enter your First Name" required="required" name="firstname">
			&nbsp;&nbsp;&nbsp;&nbsp;
			Last Name : <input type="text" placeholder="Enter your Last Name" required="required" name="lastname">
			<br><br>
			DOB : <input type="date" required="required" name="dob">
			<br><br>
			Gender : <input type="radio" value="Male" required="required" name="gender">Male
			&nbsp;&nbsp;<input type="radio" value="Female" required="required" name="gender">Female
			<br><br>
			Age : <input type="text" placeholder="Enter your Age" required="required" name="age">
			<br><br>
			Aadhar no : <input type="text" placeholder="Enter your Aadhar no" required="required" name="aadhar">
			<br><br>
			Pan no : <input type="text" placeholder="Enter your Pan no" required="required" name="pan">
			<br><br>
			Email-Id : <input type="text" placeholder="Enter your Email-id" required="required" name="emailid">
			<br><br>
			Mobile no : <input type="text" placeholder="Enter your Mobile no" required="required" name="mobileno">
			<br><br>
			Address : <input type="text" placeholder="Enter your Address" required="required" name="address">
			<br><br>
			Monthly-Income : <input type="text" placeholder="Enter your Monthly income" required="required" name="monthlyincome">
			<br><br>
			Yearly-Income : <input type="text" placeholder="Enter your Yearly income" required="required" name="yearlyincome">
			<br><br>
			Total Property : <input type="text" placeholder="Enter your Total property" required="required" name="totalproperty">
			<br><br>
			Criminal Background : <input type="radio" value="Yes" required="required" name="criminalbackground">Yes
			&nbsp;&nbsp;&nbsp;<input type="radio" value="No" required="required" name="criminalbackground">No
			<br><br>
			<input type="submit" value="Apply">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="Cancel">
		</form>
		<%
			String msg = (String)request.getAttribute("message");
			if(msg!=null)
			{
				boolean color = (Boolean)request.getAttribute("check");
				if(color)
				{
		%>
					<h2 style="color: green;"><%=msg %></h2>
		<%
				}
				else
				{
		%>
					<h2 style="color: red;"><%=msg %></h2>
		<%
				}
			}
		%>
		<br><br>
	</center>
	</div>
</body>
</html>