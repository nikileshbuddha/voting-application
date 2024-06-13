<%@page import="com.govt.voting.entity.Candidate"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Admin</title>
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
			<li><a href="viewAdmins">View Admins</a></li>
			<li><a href="viewVoters">View Voters</a></li>
			<li><a href="viewCandidates">View Candidates</a></li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green;">
		<center>
			<h1>ALL CANDIDATES DETAILS</h1>
			<br>
			<table border="2px" cellpadding="8px" cellspacing="1px" align="center">
				<tr style="background-color: silver;">
					<th>First Name</th>
					<th>Last Name</th> 
					<th>DOB</th>
					<th>Gender</th>
					<th>Age</th>
					<th>Aadhar Number</th>
					<th>Email-ID</th>
					<th>Mobile Number</th>
					<th>Address</th>
					<th>Monthly income</th>
					<th>Yearly income</th>
					<th>Total Property</th>
					<th>Criminal Background</th>
					<th>Total Votes</th>
				</tr>
				<%
					List li = (List)request.getAttribute("candList");
					Iterator<Candidate> it = li.iterator();
					while(it.hasNext())
					{
						Candidate can = it.next();
				%>
				<tr style="background-color:aqua;">
					<td><%= can.getFirstname()%></td>
					<td><%= can.getLastname()%></td>
					<td><%= can.getDob()%></td>
					<td><%= can.getGender()%></td>
					<td><%= can.getAge()%></td>
					<td><%= can.getAadhar()%></td>
					<td><%= can.getEmailid()%></td>
					<td><%= can.getMobileno()%></td>
					<td><%= can.getAddress()%></td>
					<td><%= can.getMonthlyincome()%></td>
					<td><%= can.getYearlyincome()%></td>
					<td><%= can.getTotalproperty()%></td>
					<td><%= can.getCriminalbackground()%></td>
					<td><%= can.getVotes() %></td>
				</tr>
				<%
					}
				%>
			</table>
		</center>
		<br><br>
	</div>
</body>
</html>