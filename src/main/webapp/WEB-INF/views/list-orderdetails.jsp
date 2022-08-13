<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details List</title>	
<style>
.book{
background-color: orange;
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

</style>
</head>
<body>
<div class="book">
	<div id="table root">
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
				<c:forEach var="od" items="${allOrderDetails}">
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