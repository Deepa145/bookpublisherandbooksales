<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
<style>
<%@include file="/WEB-INF/cssfiles/updateauthor.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<div id="root">
				<div id="form">
					<form:form class="form" action="updateauthors" method="post"
						modelAttribute="updateauthor">
						<div>
							<label for="authorId">Author Id</label>
							<div>
								<form:input path="authorId" placeholder="authorId" type="number"
									required="true" />
							</div>
						</div>
						<form:errors path="authorId" class="text-box" />


						<div>
							<label for="authorName">Author Name</label>
							<div>
								<form:input path="authorName" pattern="^[A-Za-z\s]*$"
									placeholder="authorName" required="true" />
							</div>
						</div>
						<form:errors path="authorName" class="text-box" />

						<div>
							<label for="authorAddress">Author Address</label>
							<div>
								<form:input path="authorAddress" placeholder="authorAddress"
									required="true" />
							</div>
						</div>
						<form:errors path="authorAddress" class="text-box" />

						<div>
							<label for="phoneNumber">Phone Number</label>
							<div>
								<form:input path="phoneNumber" placeholder="phoneNumber"
									required="true" />
							</div>
						</div>
						<form:errors path="phoneNumber" class="text-box" />

						<div>
							<label for="email">Email</label>
							<div>
								<form:input path="email" placeholder="email" required="true" />
							</div>
						</div>
						<form:errors path="email" class="text-box" />

						<div>
							<label for="gender">Gender</label>
							<div>
								<form:radiobutton path="gender" value="Male" />
								Male
								<form:radiobutton path="gender" value="Female" />
								Female
								<form:radiobutton path="gender" value="Transgender" />
								Transgender
							</div>
						</div>
						<form:errors path="gender" class="text-box" />
						<div>
							<form:button>Update Author</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/authors/authorslist'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>