<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Author By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<form:form action="" method="post" modelAttribute="fetchaubk">
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
			<form:form action="" method="post" modelAttribute="fetchbookandauthorid">
				<div>
					<label for="authorId">Author Id</label>
					<div>
						<form:input path="authorId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="authorName">Author Name</label>
					<div>
						<form:input path="authorName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="authorAddress">Author Address</label>
					<div>
						<form:input path="authorAddress" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true"/>
					</div>
				</div>
			</form:form>
			<form:form action="" method="post" modelAttribute="fetchauthorsdetailsbyauthorandbookid">
				<div>
					<label for="bookId">Book Id</label>
					<div>
						<form:input path="bookId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="bookName">Book Name</label>
					<div>
						<form:input path="bookName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dateOfPublishing">Date Of Publishing</label>
					<div>
						<form:input path="dateOfPublishing" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="category">Category</label>
					<div>
						<form:input path="category" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="stockInHand">Stock In Hand</label>
					<div>
						<form:input path="stockInHand" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="sales">Sales</label>
					<div>
						<form:input path="sales" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>