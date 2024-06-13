<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Votes Details</title>
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
	th{
	background-color: green;
	color: white;
	}
	a{
	text-decoration: none;
	color: white;
	}
	
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li>Welcome Admin</li>
			<li>View Admins</li>
			<li>View Voters</li>
			<li>View Candidates</li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green;">
		<center>
			<h1>Candidate's Vote Details</h1><br>
			<table border="2px" cellpadding="8px" cellspacing="1px" align="center">
				<tr>
					<th></th>
					<th>Candidate 1 votes</th>
					<th>Candidate 2 votes</th>
					<th>Candidate 3 votes</th>
					<th>Candidate 4 votes</th>
					<th>Actions</th>
				</tr>
				<tr>
					<td>Voters</td>
					<td></td>
					<td>pratik@gmail.com</td>
					<td></td>
					<td></td>
					<td><center><img alt="img" src="delete.jpg" width="25px" height="25px"></center></td>
				</tr>
				<tr>
					<td>Total Votes</td>
					<td>0</td>
					<td>1</td>
					<td>0</td>
					<td>0</td>
					<td></td>
				</tr>
			</table>
			<br>
		</center>
	</div>
</body>
</html>