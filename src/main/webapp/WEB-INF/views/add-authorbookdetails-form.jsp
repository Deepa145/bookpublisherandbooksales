<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Authors Book Details</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	/* background-color: AntiqueWhite; */
	font-family: sans-serif;
	display: flex;
	text-align: left;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVz3VtIJ5hXgZ8lAf2FmfZmhyTjhx6fSs8oQ&usqp=CAU');
}

.container {
	display: inline-flex;
	background-color: AntiqueWhite;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 5px;
	box-shadow: 10px 20px 25px rgba(0, 0, 0, .3);
	overflow: hidden;
	max-width: 100%;
}

.header {
	border-bottom: 1px solid #fofofo;
	background-color: SlateBlue;
	padding: 20px 40px
}

.form {
	background-color: SlateBlue;
	border: none;
	border-radius: 2px;
	margin-bottom: 12px;
	overflow: hidden;
	padding: 0 .625em;
}

.form label {
	cursor: pointer;
	display: inline-block;
	padding: 3px 6px;
	text-align: right;
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
			<p>
				<button onclick="document.location='/webapp'">Back</button>
			</p>
			<div id="root">
				<div id="form">
					<form:form class="form" action="add" method="post"
						modelAttribute="addauthorbookdetails">
						<div>
							<label for="authorId">Author Id</label>
							<div>
								<form:input path="authorId" placeholder="Author Id" 
									id="authorId" pattern="^[0-9]*$"
									title="authorId must have number" required="true" />
							</div>
						</div>
						<form:errors path="authorId" cssClass="text-danger" />
						<div>
							<label for="bookId">Book Id</label>
							<div>
								<form:input path="bookId" placeholder="Book Id" id="bookId"
									title="bookId must have number" pattern="^[0-9]*$"
									required="true" />
							</div>
						</div>
						<form:errors path="bookId" cssClass="text-danger" />
						<div>
							<label for="royalty">Royalty</label>
							<div>
								<form:input path="royalty" placeholder="Royalty" id="royalty"
									title="royalty can't be empty or must contain only numbers"
									 required="true" />
							</div>
						</div>
						<form:errors path="royalty" cssClass="text-danger" />
						<div>
							<form:button>Add New Author Book Details</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>