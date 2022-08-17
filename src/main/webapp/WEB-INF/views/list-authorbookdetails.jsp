<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Authors Book Details</title>
<style>
.book{
background-color: #0eddbc;
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
table, th, td{
border: 2px solid black;
height: 53px;
width: 445px;
}
button {
	text-align: center;
	margin-left: 18px;
    width: 101px;
    height: 50px;
    margin-top: 10px;
}
</style>
</head>
<body>
<button onclick="document.location='/bookAdmin/index'">Back</button>
<div class="book">
	<div id="table root">
		<table class="tb">
			<thead>
				<tr>
					<th>Author Id</th>
					<th>Book Id</th>
					<th>Royalty</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ahbk" items="${allauthorbookdetails}">
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