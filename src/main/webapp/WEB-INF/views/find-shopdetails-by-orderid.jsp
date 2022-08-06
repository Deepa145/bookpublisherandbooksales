<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Order History By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="fetchOrderHistoryByOrderId">
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
	<form:form action="" method="post" modelAttribute="fetchShopDetailsById">
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
</body>
</html>