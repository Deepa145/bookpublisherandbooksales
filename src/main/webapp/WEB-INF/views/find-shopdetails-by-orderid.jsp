<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find OrderedHistory and Shop details</title>
<style>
<%@include file="/WEB-INF/cssfiles/findshopdetailsbyorderid.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<p>
				<button
					onclick="document.location='/orderdhistory/findordershopdetailsform'">Back</button>
			</p>
			<div id="root">
				<div id="form">
					<form:form class="form" action="" method="post"
						modelAttribute="fetchOrderHistoryByOrderId">
						<div>
							<label for="orderedId">Ordered Id</label>
							<div>
								<form:input path="orderedId" readonly="true" />
							</div>
						</div>
						<div>
							<label for="status">Status</label>
							<div>
								<form:input path="status" readonly="true" />
							</div>
						</div>
						<div>
							<label for="shopId">Shop Id</label>
							<div>
								<form:input path="shopId" readonly="true" />
							</div>
						</div>
						<div>
							<label for="orderedDate">Ordered Date</label>
							<div>
								<form:input path="orderedDate" readonly="true" />
							</div>
						</div>
						<div>
							<label for="totalAmount">TotalAmount</label>
							<div>
								<form:input path="totalAmount" readonly="true" />
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<div class="container" id="root">
		<div class="header" id="form">
			<form:form action="" method="post"
				modelAttribute="fetchShopDetailsById">
				<div>
					<label for="shopId">Shop Id</label>
					<div>
						<form:input path="shopId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="shopLocation">Shop Location</label>
					<div>
						<form:input path="shopLocation" readonly="true" />
					</div>
				</div>
				<div>
					<label for="contactPerson">Contact Person</label>
					<div>
						<form:input path="contactPerson" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>