<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Order Book Details By Id</title>
<style>
<%@include file="/WEB-INF/cssfiles/findorderbookdetailsbyid.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="post" modelAttribute="findorderbookdetailsbyid">
				<div>
					<label for="orderedId">Ordered Id</label>
					<div>
						<form:input path="orderedId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bookId">Book Id</label>
						<div>
							<form:input path="bookId" readonly="true" />
						</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" readonly="true" />
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" readonly="true" />
					</div>
				</div>
			</form:form>
			<button onclick="document.location='/orderdetails/findorderbookdetailsbyidform'">Back</button>
		</div>
	</div>
	</div>
	</div>
</body>
</html>