<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<script>
<%@include file="/WEB-INF/javascript/javascript.js"%>
</script>
<style type="text/css">
<%@include file="/WEB-INF/cssfiles/adminlogin.css"%>
</style>
</head>
<body>
	<div class="form">
		<form:form action="checkadminlogin" method="post"
			modelAttribute="admin" name="myForm">
			<h2>Admin Login</h2>
			<input type="text" name="name" onblur="AdminNameCheck();" placeholder="Enter Name Here"
				pattern="^[A-Za-z0-9._%+-]+$" title="Enter valid User Name">
				<form:errors path="name" cssClass="text-danger" />
			<input type="password" name="password" onblur="AdminpasswordCheck();"
				placeholder="Enter Password Here" pattern="^[A-Za-z0-9._%+-]+$"
				title="Enter valid Password">

			<button type="submit" class="btnn">Login</button>
		<div class="error">
			${result}
			</div>
		</form:form>
	</div>
</body>
</html>

