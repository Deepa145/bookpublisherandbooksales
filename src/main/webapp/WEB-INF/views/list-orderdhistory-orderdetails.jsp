<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book And Order Details List</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
.book{
background-color: #466ec9;
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
<p>
<button onclick="document.location='/webapp'">Back</button>
</p> 
<div class="book">
	<div id="root">
		<div id="docform">
			<form:form class="form" action="" method="post" modelAttribute="getorderhistory">
				<div>
					<label for="orderedId">orderedId</label>
					<div>
						<form:input path="orderedId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="status">status</label>
					<div>
						<form:input path="status" readonly="true" />
					</div>
				</div>
				<div>
					<label for="shopId">shopId</label>
					<div>
						<form:input path="shopId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderedDate">orderedDate</label>
					<div>
						<form:input path="orderedDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="totalAmount">totalAmount</label>
					<div>
						<form:input path="totalAmount" readonly="true" />
					</div>
				</div>	
			</form:form>
		</div>
		</div>
		</div>
		</div>
		</div>
		<div class="book">
		<div id="OrderDetailslist">
			<table border="2" width="100%" cellpadding="2">
				<thead>
					<tr>
						<th>Ordered Id</th>
						<th>Book Id</th>
						<th>Quantity</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="od" items="${orderdetailslist}">
						<tr>
							<td>${od.orderedId}</td>
							<td>${od.bookId}</td>
							<td>${od.quantity}</td>
							<td>${od.amount}</td>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
