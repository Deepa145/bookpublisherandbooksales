<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Author and Authors Book List</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
.book{
background-color: #9ad571;
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
	margin-left: 4px;
	width: 93px;
	height: 35px;
	margin-top: 10px;
} 

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
table, th, td{
border: 2px solid black;
height: 40px;
}
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
<p>
<button onclick="document.location='/book/getbookform'">Back</button>
</p> 
<div class="book">
	<div id="root">
		<div id="form">
			<form:form  class="form" action="" method="post" modelAttribute="getbook">
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bookName">Book Name</label>
					<div>
						<form:input path="bookName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfPublishing">Date Of Publishing</label>
					<div>
						<form:input path="dateOfPublishing" readonly="true" />
					</div>
				</div>
				<div>
					<label for="category">Category</label>
					<div>
						<form:input path="category" readonly="true" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" readonly="true" />
					</div>
				</div>
				<div>
					<label for="stockInHand">Stock In Hand</label>
					<div>
						<form:input path="stockInHand" readonly="true" />
					</div>
				</div>
				<div>
					<label for="sales">Sales</label>
					<div>
						<form:input path="sales" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
		</div>
		</div>
		</div>
	</div>
	<div class="book">
<div id="table root">
		<table class="tb">
		<caption></caption>
			<thead>
				<tr>
					<th>Author Id</th>
					<th>Book Id</th>
					<th>Royalty</th>					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ahbk" items="${authorbookdetailslist}">
					<tr>
						<td>${ahbk.authorId}</td>
						<td>${ahbk.bookId}</td>
						<td>${ahbk.royalty}</td>						
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>