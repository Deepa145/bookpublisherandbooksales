<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View Author Book Royalty</title>
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
	background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Books_HD_%288314929977%29.jpg/1200px-Books_HD_%288314929977%29.jpg');
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
	max-width: 40%;
}

.header {
	border-bottom: 1px solid #fofofo;
	background-color:#bf9520;
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
    margin-left: 70px;
    width: 82px;
    height: 46px;
    margin-top: 0px;
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
			<form:form class="form" action="" method="post" modelAttribute="findauthorbookdetailsbyid">
				<div>
					<label for="authorId">Author Id</label>
						<form:input path="authorId" readonly="true"/>
				</div>
				<div>
					<label for="bookId">Book Id</label>
						<form:input path="bookId" readonly="true"/>
				</div>
				<div>
					<label for="royalty">Royalty</label>
						<form:input path="royalty" readonly="true"/>
				</div>		
			</form:form>
			<button onclick="document.location='/authorbookdetails/findauthorbookdetailsform'">Back</button>
		</div>
	</div>
	</div>
	</div>
</body>
</html>