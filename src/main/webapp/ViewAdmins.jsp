<%@page import="com.govt.voting.entity.Admin"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ListIterator"%>
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
			<h1>ALL ADMIN DETAILS</h1>
			<br>
			<table border="2px" cellpadding="8px" cellspacing="1px" align="center">
				<tr style="background-color: silver;">
					<th>Username</th>
					<th>Password</th> 
					<th>Email</th>
					<th>Phone</th>
				</tr>
				<%
					List li = (List)request.getAttribute("data");
					Iterator<Admin> it = li.iterator();
					while(it.hasNext())
					{
						Admin ad = it.next();
				%>
				<tr style="background-color:aqua;">
					<td><%= ad.getUsername()%></td>
					<td><%= ad.getPassword()%></td>
					<td><%= ad.getEmail()%></td>
					<td><%= ad.getPhone()%></td>
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