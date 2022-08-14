<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Ordered Histories</title>
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
max-width: 100%;
}

.header {
border-bottom: 1px solid #fofofo;
background-color: #bf9520;
padding: 99px 95px
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
	<div id="root">
		<div id="form">
			<form:form class="form" action="add" method="post" modelAttribute="addorderdhistories">
				<div>
					<label for="status">Status</label>
						<form:input path="status" placeholder="status"/>
				</div>
				<form:errors path="status" caaClass="text-danger" />
					
				<div>
					<label for="shopId">Shop Id</label>
						<form:input path="shopId" placeholder="shopId" 
required="true"/>
				</div>
				<form:errors path="shopId" cssClass="text-danger" />
					
				<div>
					<label for="orderedDate">Ordered Date</label>
						<form:input path="orderedDate" type="date" placeholder="orderedDate"/>
				</div>
				<form:errors path="orderedDate" cssClass="text-danger" />
							
				<div>
					<label for="totalAmount">Total Amount</label>
						<form:input path="totalAmount" placeholder="totalAmount"/>
				</div>
				<form:errors path="totalAmount" cssClass="text-danger" />				
					<div>
						<form:button>Add New Order History</form:button>
					</div>
			</form:form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>