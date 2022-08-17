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
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	font-family: sans-serif;
	display: flex;
	text-align: left;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image:
		url('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Books_HD_%288314929977%29.jpg/1200px-Books_HD_%288314929977%29.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	display: inline-flex;
	background-color: AntiqueWhite;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 219px;
	box-shadow: 10px 20px 25px rgba(0, 0, 0, .3);
	overflow: hidden;
	max-width: 200%;
}

.header {
	border-bottom: 1px solid #fofofo;
	background-color: #bf9520;
	padding: 42px 186px
}

.form {
	background-color: #a1cd5a;
	border: none;
	border-radius: 2px;
	margin-bottom: 28px;
	overflow: hidden;
	padding: 0 .625em;
}

.form label {
	cursor: pointer;
	display: inline-block;
	padding: 3px 6px;
	text-align: left;
	width: 150px;
	vertical-align: top;
}

.form input {
	font-size: inherit;
	border-radious: 4px;
	padding: 8px;
}

p {
	text-align: center;
}

button {
	text-align: center;
	margin-left: 74px;
	width: 100px;
	height: 35px;
	margin-top: 10px;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
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