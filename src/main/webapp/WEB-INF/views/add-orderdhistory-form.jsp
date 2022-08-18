<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Ordered Histories</title>
<style>
<%@include file="/WEB-INF/cssfiles/addorderhistory.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3>Add New Ordered History</h3>
			<div id="root">
				<div id="form">
					<form:form class="form" action="add" method="post"
						modelAttribute="addorderdhistories">
						<div>
							<label for="status">Status</label>
							<form:input path="status" pattern="^[A-Za-z\s]*$"
								placeholder="status" required="true" />
						</div>
						<form:errors path="status" caaClass="text-danger" />

						<div>
							<label for="shopId">Shop Id</label>
							<form:input path="shopId" placeholder="shopId" pattern="^[0-9]+$"
								required="true" type="number" />
						</div>
						<form:errors path="shopId" cssClass="text-danger" />

						<div>
							<label for="orderedDate">Ordered Date</label>
							<form:input path="orderedDate" type="date"
								placeholder="orderedDate" min="2022-08-18" required="true" />
						</div>
						<form:errors path="orderedDate" cssClass="text-danger" />

						<div>
							<label for="totalAmount">Total Amount</label>
							<form:input path="totalAmount" placeholder="totalAmount"
								required="true" type="number" />
						</div>
						<form:errors path="totalAmount" cssClass="text-danger" />
						<div>
							<form:button>Add New Ordered History</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/bookAdmin/index'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>