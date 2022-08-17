<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Ordered Histories</title>
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
	max-width: 40%;
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
	margin-left: 61px;
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
					<form:form class="form" action="updateorderdhistories"
						method="post" modelAttribute="updateorderdhistories">
						<div>
							<label for="orderedId">Ordered Id</label>
							<div>
								<form:input path="orderedId" type="number"
									placeholder="orderedId" required="true" />
							</div>
						</div>
						<form:errors path="orderedId" class="text-box" />

						<div>
							<label for="status">Status</label>
							<div>
								<form:input path="status" pattern="^[A-Za-z\s]*$"
									placeholder="status" required="true" />
							</div>
						</div>
						<form:errors path="status" class="text-box" />

						<div>
							<label for="shopId">Shop Id</label>
							<div>
								<form:input path="shopId" type="number" placeholder="shopId"
									required="true" />
							</div>
						</div>
						<form:errors path="shopId" class="text-box" />

						<div>
							<label for="orderedDate">Ordered Date</label>
							<div>
								<form:input path="orderedDate" type="date"
									placeholder="orderedDate" required="true" min="2022-08-17"/>
							</div>
						</div>
						<form:errors path="orderedDate" class="text-box" />

						<div>
							<label for="totalAmount">Total Amount</label>
							<div>
								<form:input path="totalAmount" type="number"
									placeholder="totalAmount" required="true" />
							</div>
						</div>
						<form:errors path="totalAmount" class="text-box" />
						<div>
							<form:button> Update Ordered History</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/orderdhistory/orderdhistorylist'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>