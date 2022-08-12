<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book And Order Details List</title>
<style>
.book{
background-color: orange;
}
</style>
</head>
<body>
<div class="book">
	<div id="root">
		<div id="docform">
			<form:form action="" method="post" modelAttribute="getorderhistory">
				<div>
					<label for="orderedId">orderedId</label>
					<div>
						<form:input path="orderedId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="status">status</label>
					<div>
						<form:input path="status" readonly="true" />
					</div>
				</div>
				<div>
					<label for="shopId">shopId</label>
					<div>
						<form:input path="shopId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderedDate">orderedDate</label>
					<div>
						<form:input path="orderedDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="totalAmount">totalAmount</label>
					<div>
						<form:input path="totalAmount" readonly="true" />
					</div>
				</div>	
			</form:form>
		</div>
		</div>
		</div>
		<div class="book">
		<div id="OrderDetailslist">
			<table border="2" width="100%" cellpadding="2">
				<thead>
					<tr>
						<th>Ordered Id</th>
						<th>Book Id</th>
						<th>Quantity</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="od" items="${orderdetailslist}">
						<tr>
							<td>${od.orderedId}</td>
							<td>${od.bookId}</td>
							<td>${od.quantity}</td>
							<td>${od.amount}</td>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
