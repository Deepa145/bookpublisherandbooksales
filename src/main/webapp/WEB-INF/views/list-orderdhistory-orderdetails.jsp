<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>OrderHistory and Sold Book Details</title>
<style>
<%@include file="/WEB-INF/cssfiles/orderedhistoryorderdetailslist.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
<p>
<button onclick="document.location='/orderdhistory/findorderhistorybyorderdetailsform'">Back</button>
</p> 
<div class="book">
	<div id="root">
		<div id="docform">
			<form:form class="form" action="" method="post" modelAttribute="getorderhistory">
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
		</div>
		</div>
		<div class="book">
		<div id="OrderDetailslist">
			<table class="tb">
			<caption></caption>
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
