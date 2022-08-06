<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Ordered Histories</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateorderdhistories" method="post" modelAttribute="updateorderdhistories">
				<div>
					<label for="orderedId">Ordered Id</label>
					<div>
						<form:input path="orderedId" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				<div>
					<label for="shopId">Shop Id</label>
					<div>
						<form:input path="shopId" />
					</div>
				</div>
				<div>
					<label for="orderedDate">Ordered Date</label>
					<div>
						<form:input path="orderedDate" />
					</div>
				</div>		
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" />
					</div>
				</div>				
					<div>
						<form:button> Update Order History</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>