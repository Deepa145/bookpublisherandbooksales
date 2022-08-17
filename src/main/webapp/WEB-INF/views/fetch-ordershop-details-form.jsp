<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find OrderedHistory and shop details</title>
<style>
<%@include file="/WEB-INF/cssfiles/fetchordershopdetails.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3>View OrderedHistory and OrderedShop Details</h3>
			<br>
			<form class="form" action="/orderdhistory/getordershopdetails"
				method="get" style="margin: 0;">
				<div>
					<label>Enter Order Id </label> <input type="text"
						placeholder="Ordered Id" name="orderedid" pattern="^[0-9]+$"
						required="true"> <input type='submit' value="View"
						name="submit">
				</div>
			</form>
			<button onclick="document.location='/bookAdmin/index'">Back</button>
		</div>
	</div>
</body>
</html>