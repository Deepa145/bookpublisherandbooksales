<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Author By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findauthorbyid">
				<div>
					<label for="authorId">Author Id</label>
					<div>
						<form:input path="authorId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="authorName">Author Name</label>
					<div>
						<form:input path="authorName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="authorAddress">Author Address</label>
					<div>
						<form:input path="authorAddress" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>