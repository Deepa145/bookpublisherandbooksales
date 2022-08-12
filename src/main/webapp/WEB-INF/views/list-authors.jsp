<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authors List</title>
<style>
.book{
background-color: orange;
}
</style>
</head>
<body>
<div class="book">
	<div id="table root">
		 <table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Author Id</th>
					<th>Author Name</th>
					<th>Author Address</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ahs" items="${allauthors}">
					<tr>
						<td>${ahs.authorId}</td>
						<td>${ahs.authorName}</td>
						<td>${ahs.authorAddress}</td>
						<td>${ahs.phoneNumber}</td>
						<td>${ahs.email}</td>
						<td>${ahs.gender}</td>
						 <td><a href="updateauthor?authorid=${ahs.authorId}">Edit</a></td>
						  <td><a href="deleteauthor?authorid=${ahs.authorId}">Delete</a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>