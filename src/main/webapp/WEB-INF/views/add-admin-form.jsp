<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add New Admin</title>
<style>
<%@include file="/WEB-INF/cssfiles/addadmin.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<p>
				<button class="button-85" role="button" onclick="document.location='/localhost:8080'">Back</button>
			</p>
			<div id="root">
				<div id="form">
					<form:form class="form" action="add" method="post"
						modelAttribute="addadmins">
						<form:errors path="name" cssClass="text-danger" />
						<div>
							<label for="userName">UserName </label>
						
								<form:input path="name" placeholder="User Name"
									 pattern="^[A-Za-z\s]*$" title="Enter valid User Name"
									required="true" />
							
						</div>
						<form:errors path="password" cssClass="text-danger" />
						<div>
							<label for="passWord">Password </label>
							
								<form:input path="password" placeholder="Password"
									pattern="^[A-Za-z\s]*$"
									title="Enter valid Password"
									required="true" />
						
						</div>
						<div>
							<form:button>Add New admin</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>