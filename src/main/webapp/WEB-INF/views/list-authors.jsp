<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authors List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Author Id</th>
					<th>Author Name</th>
					<th>Author Address</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Gender</th>
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
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>