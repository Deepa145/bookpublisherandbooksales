<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Shop</title>
<style>
<%@include file="/WEB-INF/cssfiles/addshop.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
		<h3>Add New Shop</h3>
			<div id="root">
				<div id="form">
					<form:form class="form" action="add" method="post"
						modelAttribute="addshops">
						<div>
							<label for="shopLocation">Shop Location</label>
							<form:input path="shopLocation" placeholder="shopLocation"
								pattern="^[A-Za-z\s]*$" title="Enter valid Location"
								required="true" />
						</div>
						<form:errors path="shopLocation" class="text-box" />

						<div>
							<label for="contactPerson">Contact Person</label>
							<form:input path="contactPerson" placeholder="contactPerson"
								pattern="^[A-Za-z\s]*$" required="true" />
						</div>
						<form:errors path="contactPerson" class="text-box" />

						<div>
							<label for="phoneNumber">Phone Number</label>
							<form:input path="phoneNumber" placeholder="phoneNumber"
								pattern="^\\d{10}$" type="number" required="true" />
						</div>
						<form:errors path="phoneNumber" class="text-box" />
						<div>
							<form:button>Add New Shop</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/bookAdmin/index'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>