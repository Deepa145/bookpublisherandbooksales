<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Authors Book Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addauthorbookdetails">
				<div>
					<label for="authorId">Author Id</label>
					<div>
						<form:input path="authorId" />
					</div>
				</div>
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" />
					</div>
				</div>
				<div>
					<label for="royalty">Royalty</label>
					<div>
						<form:input path="royalty" />
					</div>
				</div>		
					<div>
						<form:button>Add New Author Book Details</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>