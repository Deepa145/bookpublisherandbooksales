<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Order Book Details</title>
<style>
<%@include file="/WEB-INF/cssfiles/addorderbookdetails.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3>Sell Book</h3>
			<div id="root">
				<div id="form">
					<form:form class="form" action="add" method="post"
						modelAttribute="addorderDetails">

						<div>
							<label for="orderedId">Ordered Id</label>
							<form:input path="orderedId" placeholder="Order Id"
								pattern="^[0-9]+$" title="Must have OrderId" required="true"
								type="number" />
						</div>
						<form:errors path="orderedId" cssClass="text-box" />

						<div>
							<label for="bookId">Book Id</label>
							<form:input path="bookId" title="Must have BookId"
								placeholder="Book Id" pattern="^[0-9]+$" required="true"
								type="number" />
						</div>
						<form:errors path="bookId" class="text-box" />

						<div>
							<label for="quantity">Quantity</label>
							<form:input path="quantity" title="Must have quantity"
								placeholder="Quantity" required="true" type="number" />
						</div>
						<form:errors path="quantity" class="text-box" />

						<div>
							<form:button> Sell Book</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/bookAdmin/index'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>