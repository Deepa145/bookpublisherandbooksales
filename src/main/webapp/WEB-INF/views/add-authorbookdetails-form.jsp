<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Authors Book Details</title>
<style>
<%@include file="/WEB-INF/cssfiles/addauthorbookdetails.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3>Add New Author's Book Royalty</h3>.
			<button onclick="document.location='/bookAdmin/index'">Back</button>
			<div id="root">
				<div id="form">
					<form:form class="form" action="add" method="post"
						modelAttribute="addauthorbookdetails">
						<div>
							<label for="authorId">Author Id</label>
                        <form:select path="authorId" placeholder="Author Id">

                            <c:forEach var="allAuthors" items="${getauthors}">
                                <form:option value="${allAuthors.authorId}"
                                    label="${allAuthors.authorId}" />
                            </c:forEach>
                        </form:select>
						</div>
						<form:errors path="authorId" cssClass="text-danger" />
						<div>
							<label for="bookId">Book Id</label>
							 <form:select path="bookId" placeholder="Book Id">

                            <c:forEach var="allBooks" items="${getbooks}">
                                <form:option value="${allBooks.bookId}"
                                    label="${allBooks.bookId}" />
                            </c:forEach>
                        </form:select>
							

						</div>
						<form:errors path="bookId" cssClass="text-danger" />
						<div>
							<label for="royalty">Royalty</label>

							<form:input path="royalty" placeholder="Royalty" id="royalty"
								title="royalty can't be empty or must contain only numbers"
								pattern="^[0-9]+$" required="true" type="number" />

						</div>
						<form:errors path="royalty" cssClass="text-danger" />
						<div>
							<form:button>Add New Author's Book Royalty</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>