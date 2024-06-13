<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.govt.voting.entity.Candidate"%>
<%@page import="com.govt.voting.entity.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
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
	<%
		Admin ad = (Admin)request.getAttribute("admin");
	%>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li>Welcome <%=ad.getUsername() %></li>
			<li><a href="viewAdmins">View Admins</a></li>
			<li><a href="viewCandidates">View Candidates</a></li>
			<li><a href="viewVoters">View Voters</a></li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green;">
		<center>
			<h1>Admin Dashbord</h1>
			<br>
			<%
				List<Candidate> li = (List)request.getAttribute("candList");
				Iterator<Candidate> it = li.iterator();
				while(it.hasNext())
				{
					Candidate can =	it.next();
			%>
				<h2><%= can.getFirstname()+can.getLastname()%> : Total Votes = <%=can.getVotes() %></h2>
			<%
				}
			%>
		</center>
	</div>
</body>
</html>