<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Shop</title>
<style>
<%@include file="/WEB-INF/cssfiles/updateshop.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<div id="root">
				<div id="form">
					<form:form class="form" action="updateshop" method="post"
						modelAttribute="updateshop">

						<div>
							<label for="shopId">Shop Id</label>
							<div>
								<form:input path="shopId" type="number" placeholder="shopId"
									required="true" />
							</div>
						</div>
						<form:errors path="shopId" class="text-box" />

						<div>
							<label for="shopLocation">Shop Location</label>
							<div>
								<form:input path="shopLocation" pattern="^[A-Za-z\s]*$"
									placeholder="shopLocation" required="true" />
							</div>
						</div>
						<form:errors path="shopLocation" class="text-box" />

						<div>
							<label for="contactPerson">Contact Person</label>
							<div>
								<form:input path="contactPerson" pattern="^[A-Za-z\s]*$"
									placeholder="contactPerson" required="true" />
							</div>
						</div>
						<form:errors path="contactPerson" class="text-box" />

						<div>
							<label for="phoneNumber">Phone Number</label>
							<div>
								<form:input path="phoneNumber" placeholder="phoneNumber"
									pattern="^\\d{10}$" required="true" />
							</div>
						</div>
						<form:errors path="phoneNumber" class="text-box" />
						<div>
							<form:button>Update Shop Details</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/shop/shoplist'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>