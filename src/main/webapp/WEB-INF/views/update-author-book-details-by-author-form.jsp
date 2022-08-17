<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Author Book Royalty</title>
<style>
<%@include file="/WEB-INF/cssfiles/updateauthorbookdetailsbyauthor.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3>Update Author Book Royalty</h3>
			<br>
			<form action="/authorbookdetails/updateauthorbookdetails"
				method="get" style="margin: 0;">
				<div>
					<label>Enter Book Id</label> <input type="text"
						placeholder="Book Id" type="number" pattern="^[0-9]+$"
						name="bookid" required="true">
				</div>
				<div>
					<label>Enter Author Id</label> <input type="text"
						placeholder="Author Id" name="authorid" type="number"
						pattern="^[0-9]+$" required="true"> <input type='submit'
						value="Update" name="submit">
				</div>
			</form>
			<button onclick="document.location='/bookAdmin/index'">Back</button>
		</div>
	</div>
</body>
</html>