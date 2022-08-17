<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Order Book Details</title>
<style>
<%@include file="/WEB-INF/cssfiles/updateorderdetails.css"%>
</style>
</head>
<body>
<div class="container" id="root">
<div class="header" id="form">
<p>
<button onclick="document.location='/orderdetails/updateorderdetailsform'">Back</button>
</p>
	<div id="root">
		<div id="form">
			<form:form class="form" action="updateorderdetails" method="post" modelAttribute="updateorderbookdetails">
				
				<div>
					<label for="orderedId">Ordered Id</label>
					<div>
						<form:input path="orderedId" type="number" placeholder="orderedId" required="true"/>
					</div>
				</div>
				<form:errors path="orderedId" class="text-box" />
				
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" type="number" placeholder="bookId" required="true"/>
					</div>
				</div>
				<form:errors path="bookId" class="text-box" />
				
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" type="number" placeholder="quantity" required="true"/>
					</div>
				</div>
				<form:errors path="quantity" class="text-box" />	
					
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" type="number" placeholder="amount" required="true"/>
					</div>
				</div>	
				<form:errors path="amount" class="text-box" />	
					<div>
						<form:button>Update Sold Book </form:button>
					</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>