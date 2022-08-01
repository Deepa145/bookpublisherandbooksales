<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addbooks">
				<div>
					<label for="bookId">bookId</label>
					<div>
						<form:input path="bookId" />
					</div>
				</div>
				<div>
					<label for="bookName">bookName</label>
					<div>
						<form:input path="bookName" />
					</div>
				</div>
				<div>
					<label for="dateOfPublishing">dateOfPublishing</label>
					<div>
						<form:input path="dateOfPublishing" />
					</div>
				</div>
				<div>
					<label for="category">category</label>
					<div>
						<form:input path="category" />
					</div>
				</div>
				<div>
					<label for="price">price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<div>
					<label for="stockInHand">stockInHand</label>
					<div>
						<form:input path="stockInHand" />
					</div>
				</div>
				<div>
					<label for="sales">sales</label>
					<div>
						<form:input path="sales" />
					</div>
				</div>
					<div>
						<form:button>Add New Book</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>