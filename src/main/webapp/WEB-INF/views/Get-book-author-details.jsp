<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Fetch Form</title>
<style>
<%@include file="/WEB-INF/cssfiles/getbookandauthordetails.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3 style="color: #c51515">View Book and Author's Book Royalty Details</h3>
			<br>
			<form class="form" action="/book/getbookbyauthorbookdetails" method="get"
				style="margin: 0;">
				<div>
				<label>Enter id </label> <input type="text" placeholder="book id"
					name="bookid" pattern="^[0-9]+$" required="true" > <input type='submit' value="View"
					name="submit">
					</div>
			</form>
			<button onclick="document.location='/bookAdmin/index'">Back</button>
		</div>
	</div>
</body>
</html>