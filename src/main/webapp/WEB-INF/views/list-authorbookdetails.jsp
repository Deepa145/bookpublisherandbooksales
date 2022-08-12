<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authors Book Details</title>
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