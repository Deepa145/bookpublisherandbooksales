<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Shop By Id</title>
<style>
<%@include file="/WEB-INF/cssfiles/findshopbyid.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
<p>
<button onclick="document.location='/shop/findshopform'">Back</button>
</p> 
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="post" modelAttribute="findshopbyid">
				<div>
					<label for="shopId">Shop Id</label>
						<form:input path="shopId" readonly="true" />
				</div>
				<div>
					<label for="shopLocation">Shop Location</label>
							<form:input path="shopLocation" readonly="true" />
				</div>
				<div>
					<label for="contactPerson">Contact Person</label>
						<form:input path="contactPerson" readonly="true" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
						<form:input path="phoneNumber" readonly="true" />
				</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>