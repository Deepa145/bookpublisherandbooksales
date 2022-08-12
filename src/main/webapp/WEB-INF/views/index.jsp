<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Author Book Publishing and Book Sales</title>
<style>
body {
	background-image:
		url("https://wallpapers.com/images/high/white-opened-book-with-marker-hm2gov19i85sqxaf.webp");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.form {
	text-align: center;
}

.text-danger {
	color: #00ffff;
	font-size: 2.9em;
}
.p{
color:#00ffff;
}
</style>
</head>
<body>
	<h1 align="center">Author Book Publishing and Book Sales</h1>
	<hr   />
	<p>${message}</p>
	<h3 align="center">
		<a href="/bookAdmin/adminlogin">Admin Login</a>
	</h3>
	<h3 align="center">
		<a href="/bookAdmin/addadmin">Create New Admin</a>
	</h3>
	<hr   />
	<div class="form">
		<p>
			<b>Email ID:</b> deepa.ravi@chainsys.com
		</p>
		<p>
			<b>Contact:</b>+91 9344947186
		</p>
	<!-- 	<div id="Address"> -->
		<h3>Address:</h3>
		<p>PLOT NO 8,
		<p>DOOR NO 85 PONNIAMMAN NAGAR,AYANAMPAKKAM,</p>
		<p>CHENNAI TN 600095 IN</p>
		</div>
</body>
</html>