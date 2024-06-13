<%@page import="com.govt.voting.entity.Voter"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Voters</title>
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
			<h1>ALL VOTER DETAILS</h1>
			<br>
			<%
				String msg = (String)request.getAttribute("deletemsg");
				String editmsg = (String)request.getAttribute("editmsg");
				if(msg!=null)
				{
			%>
					<h2 style="color: green;"><%=msg %></h2>
			<%
				}
				if(editmsg!=null)
				{
			%>
					<h2 style="color: green;"><%=editmsg %></h2>
			<%
				}
			%>
			<table border="2px" cellpadding="8px" cellspacing="1px" align="center">
				<tr style="background-color: silver;">
					<th>Voter ID</th>
					<th>First Name</th>
					<th>Last Name</th> 
					<th>DOB</th>
					<th>Gender</th>
					<th>Aadhar Number</th>
					<th>PAN Number</th>
					<th>Email-ID</th>
					<th>Mobile Number</th>
					<th>Address</th>
					<th>UserName</th>
					<th>Password</th>
					<th>Vote Status</th>
					<th>Edit</th>
					<th>DELETE</th>
				</tr>
				<%
					List li = (List)request.getAttribute("voterList");
						Iterator<Voter> it = li.iterator();
						while(it.hasNext())
						{
							Voter vtr = it.next();
				%>
				<tr style="background-color:aqua;">
					<td><%= vtr.getId() %></td>
					<td><%= vtr.getFirstname()%></td>
					<td><%= vtr.getLastname()%></td>
					<td><%= vtr.getDob()%></td>
					<td><%= vtr.getGender()%></td>
					<td><%= vtr.getAadharno()%></td>
					<td><%= vtr.getPanno()%></td>
					<td><%= vtr.getEmailid()%></td>
					<td><%= vtr.getMobileno()%></td>
					<td><%= vtr.getAddress()%></td>
					<td><%= vtr.getUsername()%></td>
					<td><%= vtr.getPassword()%></td>
					<td><%= vtr.getStatus()%></td>
					<td>
						<form action="editVoterPage">
							<input type="hidden" value="<%=vtr.getEmailid()%>" name="emailid">
							<input type="submit" value="Edit">
						</form>
					</td>
					<td>
						<form action="voterDelete">
							<input type="hidden" value="<%= vtr.getEmailid()%>" name="emailid">
							<input type="submit" value="Delete">
						</form>
					</td>
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