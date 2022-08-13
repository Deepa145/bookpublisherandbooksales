<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Author Book Details</title>
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
	background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Books_HD_%288314929977%29.jpg/1200px-Books_HD_%288314929977%29.jpg');
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
			<form:form class="form" action="updateauthorbookdetail" method="post" modelAttribute="updateauthorbookdetails">
				
				<div>
					<label for="authorId">Author Id</label>
					<div>
						<form:input path="authorId" placeholder="authorId" required="true"/>
					</div>
				</div>
				<form:errors path="authorId" cssClass="text-danger" />
				
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" placeholder="bookId" required="true"/>
					</div>
				</div>
				<form:errors path="bookId"  cssClass="text-danger" />
				
				<div>
					<label for="royalty">Royalty</label>
					<div>
						<form:input path="royalty" placeholder="royalty" required="true"/>
					</div>
				</div>
				<form:errors path="royalty"  cssClass="text-danger" />		
					<div>
						<form:button>Update Author Book Details</form:button>
					</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>