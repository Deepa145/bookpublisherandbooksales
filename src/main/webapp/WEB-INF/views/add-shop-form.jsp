<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Shop</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addshops">
				<div>
					<label for="shopId">Shop Id</label>
					<div>
						<form:input path="shopId" />
					</div>
				</div>
				<div>
					<label for="shopLocation">Shop Location</label>
					<div>
						<form:input path="shopLocation" />
					</div>
				</div>
				<div>
					<label for="contactPerson">Contact Person</label>
					<div>
						<form:input path="contactPerson" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>				
					<div>
						<form:button>Add New Shop</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>