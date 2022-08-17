<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Author Book Royalty</title>
<style>
<%@include file="/WEB-INF/cssfiles/updateauthorbookdetails.css"%>
</style>
</head>
<body>
<div class="container" id="root">
<div class="header" id="form">
	<div id="root">
		<div id="form">
			<form:form class="form" action="updateauthorbookdetail" method="post" modelAttribute="updateauthorbookdetails">
				
				<div>
					<label for="authorId">Author Id</label>
					<div>
						<form:input path="authorId" type="number" placeholder="authorId" required="true"/>
					</div>
				</div>
				<form:errors path="authorId" cssClass="text-danger" />
				
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" type="number" placeholder="bookId" required="true"/>
					</div>
				</div>
				<form:errors path="bookId"  cssClass="text-danger" />
				
				<div>
					<label for="royalty">Royalty</label>
					<div>
						<form:input path="royalty" type="number" placeholder="royalty" required="true"/>
					</div>
				</div>
				<form:errors path="royalty"  cssClass="text-danger" />		
					<div>
						<form:button>Update Author Book Royalty</form:button>
					</div>
			</form:form>
			<button onclick="document.location='/authorbookdetails/updateauthordetailsbyauthorform'">Back</button>
		</div>
	</div>
	</div>
	</div>
</body>
</html>