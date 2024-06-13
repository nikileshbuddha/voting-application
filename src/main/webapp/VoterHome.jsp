<%@page import="com.govt.voting.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@page import="com.govt.voting.entity.Voter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VoterHome</title>
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
	height: 500px;
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
</style>
</head>
<body>

	<%
		Voter v = (Voter)request.getAttribute("voter");
	%>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li>Welcome <%= v.getFirstname()%></li>
			<li><a href="ApplyCandidate.jsp">Apply For Candidate</a></li>
			<li><a href="VoterSignin.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center><h1>User Dashboard</h1></center>
		<br>
		<div class="user">
			<center><h2>User Deatils:</h2></center>
			<center><img src="user.png" style="width:80px; height:80px;"></center>
			<center>
				<table border="2px" cellpadding="8px" cellspacing="1px" align="center">
					<tr>
						<td>Id:</td>
						<td><%=v.getId() %></td>
						
					</tr>
					<tr>
						<td>Name:</td>
						<td><%=v.getFirstname() %></td>
						
					</tr>
					<tr>
						<td>Email Id:</td>
						<td><%=v.getEmailid() %></td>
						
					</tr>
					<tr>
						<td>Phone No:</td>
						<td><%=v.getMobileno() %></td>
						
					</tr>
					<tr>
						<td>Status:</td>
						<td><%=v.getStatus() %></td>
					</tr>
				</table>
			</center>
		</div>
		<div class="options">
		<center>
			<h4 style="color: red;"><%=v.getFirstname() %></h4>
			<h3>Do voting</h3>
			<br>
			<%
				List<Candidate> allCands = (List)request.getAttribute("listofcand");
				for(Candidate can : allCands)
				{
			%>
			<form action="addVote">
				<input type="radio" name="candidate" value="<%=can.getEmailid()%>"><%=can.getFirstname()%>
				<br><br>
			<%
				}
				if(v.getStatus().equalsIgnoreCase("Not Voted"))
				{
			%>
					<input type="hidden" name="voter" value="<%=v.getEmailid()%>">
					<input type="submit" value="vote">
			<%
				}
				String candName = (String)request.getAttribute("name");
				if(candName!=null)
				{
			%>
					<h2 style="color: green;"><%=v.getFirstname() %> You have voted for <%=candName %></h2>
			<%
				}
			%>
			</form>
		</center>
		</div>	
	</div>
</body>
</html>