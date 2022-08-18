<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
<style>
<%@include file="/WEB-INF/cssfiles/addbooks.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<div id="root">
				<div id="form">
					<h3>Add New Book</h3>
					<form:form class="form" action="add" method="post"
						modelAttribute="addbooks">
						<div>
							<label for="bookName">BookName</label>
							<form:input path="bookName" placeholder="Book Name"
								pattern="^[A-Za-z\s]*$" required="true" />
						</div>
						<form:errors path="bookName" cssClass="text-danger" />
						<div>
							<label for="dateOfPublishing">DateOfPublishing</label>
							<form:input path="dateOfPublishing" type="date"
								placeholder="DateOfPublishing" max="2022-08-17" required="true" />
						</div>
						<div>
							<label for="category">Category</label>
							<form:input path="category" placeholder="Category"
								pattern="^[A-Za-z\s]*$" required="true" />
						</div>
						<form:errors path="category" cssClass="text-danger" />
						<div>
							<label for="price">Price</label>
							<form:input path="price" placeholder="Price"
								pattern="^\d{0,8}(\.\d{1,4})?$" title="Must have Price"
								required="true" type="number" />
						</div>
						<form:errors path="price" cssClass="text-danger" />
						<div>
							<label for="stockInHand">StockInHand</label>
							<form:input path="stockInHand" placeholder="StockInHand"
								required="true" type="number" />
						</div>
						<form:errors path="stockInHand" cssClass="text-danger"
							pattern="[1-9]{1}[0-9]{9}" title="Must have Price"
							required="true" />
						<div>
							<label for="sales">Sales</label>
							<form:input path="sales" placeholder="Sales" required="true"
								type="number" title="Must have Price" />
						</div>
						<form:errors path="sales" cssClass="text-danger" required="true" />
						<div>
							<form:button>Add New Book</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/bookAdmin/index'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>