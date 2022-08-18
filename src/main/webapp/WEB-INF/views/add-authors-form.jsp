<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1"> 
<title>Add Authors</title>
<style>
<%@include file="/WEB-INF/cssfiles/addauthors.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
		<h3>Add New Author</h3>
			<p>
				<button onclick="document.location='/bookAdmin/index'">Back</button>
			</p>
	<div id="root">
		<div id="form">
			<form:form class="form" action="add" method="post" modelAttribute="addauthors">				
				
				<div>
					<label for="authorName">Author Name</label>
					
						<form:input path="authorName" placeholder="Author Name" pattern="^[A-Za-z\s]*$" title="Enter valid Author Name"
									required="true"/>
					
				</div>
				<form:errors path="authorName" class="text-box" />
				
				<div>
					<label for="authorAddress">Author Address</label>
						<form:input path="authorAddress" placeholder="Author Address" required="true"/>
				</div>
				<form:errors path="authorAddress" class="text-box" />
				
				<div>
					<label for="phoneNumber">Phone Number</label>
						<form:input path="phoneNumber" placeholder="Phone Number" 
						pattern="^\\d{10}$" required="true"/>
				</div>
				<form:errors path="phoneNumber" class="text-box" />
				
				<div>
					<label for="email">Email</label>
						<form:input path="email" placeholder="Email" required="true"/>
				</div>
				<form:errors path="email" class="text-box" />
				
				<div>
					<label for="gender">Gender</label>
                        <form:radiobutton path="gender"  value="Male"/>Male
                            <form:radiobutton path="gender"  value="Female"/>Female
                            <form:radiobutton path="gender"  value="Transgender"/>Transgender
				</div>
				<form:errors path="gender" class="text-box" />
					<div>
						<form:button>Add New Author</form:button>
					</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>