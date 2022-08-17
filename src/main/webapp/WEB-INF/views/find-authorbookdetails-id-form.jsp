<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View Author Book Royalty</title>
<style>
<%@include file="/WEB-INF/cssfiles/findauthorbookdetailsid.css"%>
</style>
</head>
<body>
<div class="container" id="root">
<div class="header" id="form">
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="post" modelAttribute="findauthorbookdetailsbyid">
				<div>
					<label for="authorId">Author Id</label>
						<form:input path="authorId" readonly="true"/>
				</div>
				<div>
					<label for="bookId">Book Id</label>
						<form:input path="bookId" readonly="true"/>
				</div>
				<div>
					<label for="royalty">Royalty</label>
						<form:input path="royalty" readonly="true"/>
				</div>		
			</form:form>
			<button onclick="document.location='/authorbookdetails/findauthorbookdetailsform'">Back</button>
		</div>
	</div>
	</div>
	</div>
</body>
</html>