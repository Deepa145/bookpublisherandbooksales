<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Author and Authors Book List</title>
<style>
<%@include file="/WEB-INF/cssfiles/bookandauthorbookdetailslist.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
<p>
<button onclick="document.location='/book/getbookform'">Back</button>
</p> 
<div class="book">
	<div id="root">
		<div id="form">
			<form:form  class="form" action="" method="post" modelAttribute="getbook">
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bookName">Book Name</label>
					<div>
						<form:input path="bookName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfPublishing">Date Of Publishing</label>
					<div>
						<form:input path="dateOfPublishing" readonly="true" />
					</div>
				</div>
				<div>
					<label for="category">Category</label>
					<div>
						<form:input path="category" readonly="true" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" readonly="true" />
					</div>
				</div>
				<div>
					<label for="stockInHand">Stock In Hand</label>
					<div>
						<form:input path="stockInHand" readonly="true" />
					</div>
				</div>
				<div>
					<label for="sales">Sales</label>
					<div>
						<form:input path="sales" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
		</div>
		</div>
		</div>
	</div>
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
				<c:forEach var="ahbk" items="${authorbookdetailslist}">
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