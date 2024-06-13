<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<style type="text/css">
.a{
	height:500px;
	width:50%;
	border: solid 2px black;
	background-color: orange;
}
input{
	border: solid 2px black;
	border-radius: 3px;
	width: 180px;
	height: 25px;
}
#b{
	background-color:aqua;
	width: 80px;
	height: 40px;
	border-radius: 15px;
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
	<center>
		<div class="a">
			<center>
			<h1 style="color: blue; text-decoration: underline;">SignUp</h1>
			<br>
			<input type="text" placeholder="Enter your name" name="name">
			<br><br>
			<input type="text" placeholder="Enter Your DOB" name="dob">
			<br><br>
			<input type="text" placeholder="Enter your address" name="add">
			<br><br>
			<input type="number" placeholder="Enter your Mobile number" name="mobile">
			<br><br>
			<input type="email" placeholder="Enter your Email" name="mail">
			<br><br>
			<input type="text" placeholder="Enter your Username" name="uname">
			<br><br>
			<input type="password" placeholder="Enter your Password" name="pass">
			<br><br>
			<input id="b" type="submit" value="Register">&nbsp&nbsp&nbsp<input id="b" type="submit" value="cancel">
			</center>
		</div>
	</center>
</body>
</html>