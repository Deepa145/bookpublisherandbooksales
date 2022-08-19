<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
<style>
<%@include file="/WEB-INF/cssfiles/updatebook.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<div id="root">
				<div id="form">
					<form:form class="form" action="updatebook" method="post"
						modelAttribute="updatebook">

						<div>
							<label for="bookId">Book Id</label>
							<div>
								<form:input path="bookId" pattern="^[0-9]+$" type="number"
									placeholder="bookId" readonly="true" required="true" />
							</div>
						</div>
						<form:errors path="bookId" class="text-box" />
						<div>
							<label for="bookName">bookName</label>
							<div>
								<form:select path="bookName" pattern="^[A-Za-z\s]*$"
									placeholder="bookName" required="true" >
									<form:option value="Theentamil">Theentamil</form:option>
									<form:option value="MarkingBard">MarkingBard</form:option>
									<form:option value="WingsOfFire">WingsOfFire</form:option>
									<form:option value="ChickenSoup">ChickenSoup</form:option>
									<form:option value="TheWolf">TheWolf</form:option>
									<form:option value="BelieveYourSelf">BelieveYourself</form:option>
									</form:select>
							</div>
						</div>
						<form:errors path="bookName" class="text-box" />
						<div>
							<label for="dateOfPublishing">dateOfPublishing</label>
							<div>
								<form:input path="dateOfPublishing" type="date"
									placeholder="dateOfPublishing" max="2022-08-17" required="true" />
							</div>
						</div>

						<div>
							<label for="category">category</label>
							<div>
								<form:select path="category" pattern="^[A-Za-z\s]*$"
									placeholder="category" required="true" >
								<form:option value="History">History</form:option>
								<form:option value="Science">Science</form:option>
								<form:option value="Horror">Horror</form:option>
								<form:option value="Philosophy">Philosophy</form:option>
								<form:option value="Fiction">Fiction</form:option>
								<form:option value="Business">Business</form:option>
								<form:option value="Humor">Humor</form:option>
								<form:option value="Psychology">Psychology</form:option>
								<form:option value="Others">Others</form:option>
									</form:select>
							</div>
						</div>
						<form:errors path="category" class="text-box" />

						<div>
							<label for="price">price</label>
							<div>
								<form:input path="price" type="number" placeholder="price"
									required="true" />
							</div>
						</div>
						<form:errors path="price" class="text-box" />

						<div>
							<label for="stockInHand">stockInHand</label>
							<div>
								<form:input path="stockInHand" type="number"
									placeholder="stockInHand" required="true" />
							</div>
						</div>
						<form:errors path="stockInHand" class="text-box" />

						<div>
							<label for="sales">sales</label>
							<div>
								<form:input path="sales" type="number" placeholder="sales"
									required="true" />
							</div>
						</div>
						<form:errors path="sales" class="text-box" />
						<div>
							<form:button>Update Book</form:button>
						</div>
					</form:form>
					<button onclick="document.location='/book/booklist'">Back</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>