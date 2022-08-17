<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Author By Id</title>
<style>
<%@include file="/WEB-INF/cssfiles/findauthorbyid.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
<p>
<button onclick="document.location='/authors/findauthorform'">Back</button>
</p> 
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="post" modelAttribute="findauthorbyid">
				<div>
					<label for="authorId">Author Id</label>
						<form:input path="authorId" readonly="true"/>
				</div>
				<div>
					<label for="authorName">Author Name</label>
						<form:input path="authorName" readonly="true"/>
				</div>
				<div>
					<label for="authorAddress">Author Address</label>
						<form:input path="authorAddress" readonly="true"/>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
						<form:input path="phoneNumber" readonly="true"/>
				</div>
				<div>
					<label for="email">Email</label>
						<form:input path="email" readonly="true"/>
				</div>
				<div>
					<label for="gender">Gender</label>
						<form:input path="gender" readonly="true"/>
				</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>