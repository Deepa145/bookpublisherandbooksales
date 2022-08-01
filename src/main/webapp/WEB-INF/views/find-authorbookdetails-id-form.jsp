<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Author Book Details By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findauthorbookdetailsbyid">
				<div>
					<label for="authorId">Author Id</label>
					<div>
						<form:input path="authorId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="royalty">Royalty</label>
					<div>
						<form:input path="royalty" readonly="true"/>
					</div>
				</div>		
			</form:form>
		</div>
	</div>
</body>
</html>