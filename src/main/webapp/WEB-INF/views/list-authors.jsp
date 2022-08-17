<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Authors List</title>
<style>
<%@include file="/WEB-INF/cssfiles/authorslist.css"%>
</style>
</head>
<body>
<p>
<button onclick="document.location='/bookAdmin/index'">Back</button>
</p>
<div class="book">
	<div id="table root">
		<table class="tb">
		<caption></caption>
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