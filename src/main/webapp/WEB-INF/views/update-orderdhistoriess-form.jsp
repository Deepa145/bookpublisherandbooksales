<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Ordered Histories</title>
<style>
<%@include file="/WEB-INF/cssfiles/updateorderedhistory.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<div id="root">
				<div id="form">
					<form:form class="form" action="updateorderdhistories"
						method="post" modelAttribute="updateorderdhistories">
						<div>
							<label for="orderedId">Ordered Id</label>
							<div>
								<form:input path="orderedId" type="number"
									placeholder="orderedId" required="true" />
							</div>
						</div>
						<form:errors path="orderedId" class="text-box" />

						<div>
							<label for="status">Status</label>
							<div>
								<form:input path="status" pattern="^[A-Za-z\s]*$"
									placeholder="status" required="true" />
							</div>
						</div>
						<form:errors path="status" class="text-box" />

						<div>
							<label for="shopId">Shop Id</label>
							<div>
								<form:input path="shopId" type="number" placeholder="shopId"
									required="true" />
							</div>
						</div>
						<form:errors path="shopId" class="text-box" />

						<div>
							<label for="orderedDate">Ordered Date</label>
							<div>
								<form:input path="orderedDate" type="date"
									placeholder="orderedDate" required="true" min="2022-08-17"/>
							</div>
						</div>
						<form:errors path="orderedDate" class="text-box" />

						<div>
							<label for="totalAmount">Total Amount</label>
							<div>
								<form:input path="totalAmount" type="number"
									placeholder="totalAmount" required="true" />
							</div>
						</div>
						<form:errors path="totalAmount" class="text-box" />
						<div>
							<form:button> Update Ordered History</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/orderdhistory/orderdhistorylist'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>