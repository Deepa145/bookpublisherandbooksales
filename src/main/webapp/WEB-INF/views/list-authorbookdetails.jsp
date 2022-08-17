<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Authors Book Details</title>
<style>
<%@include file="/WEB-INF/cssfiles/authorbookdetailslist.css"%>
</style>
</head>
<body>
<button onclick="document.location='/bookAdmin/index'">Back</button>
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