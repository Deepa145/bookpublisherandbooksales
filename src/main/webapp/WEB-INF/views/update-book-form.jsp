<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
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
			<form:form class="form" action="updatebook" method="post" modelAttribute="updatebook">
				
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" placeholder="bookId" required="true"/>
					</div>
				</div>
				<form:errors path="bookId" class="text-box" />		
				<div>
					<label for="bookName">bookName</label>
					<div>
						<form:input path="bookName" placeholder="bookName" required="true"/>
					</div>
				</div>
				<form:errors path="bookName" class="text-box" />				
				<div>
					<label for="dateOfPublishing">dateOfPublishing</label>
					<div>
						<form:input path="dateOfPublishing" type="date" placeholder="dateOfPublishing" required="true"/>
					</div>
				</div>
				
				<div>
					<label for="category">category</label>
					<div>
						<form:input path="category" placeholder="price" required="true"/>
					</div>
				</div>
				<form:errors path="category" class="text-box" />
				
				<div>
					<label for="price">price</label>
					<div>
						<form:input path="price" placeholder="price" required="true"/>
					</div>
				</div>
				<form:errors path="price" class="text-box" />
				
				<div>
					<label for="stockInHand">stockInHand</label>
					<div>
						<form:input path="stockInHand" placeholder="stockInHand" required="true"/>
					</div>
				</div>
				<form:errors path="stockInHand" class="text-box" />
				
				<div>
					<label for="sales">sales</label>
					<div>
						<form:input path="sales" placeholder="sales" required="true"/>
					</div>
				</div>
				<form:errors path="sales" class="text-box" />
					<div>
						<form:button>Update Book</form:button>
					</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>