<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book List</title>
<style>
.book{
background-color: orange;
}
body {
	/* background-color: AntiqueWhite; */
	font-family: sans-serif;
	display: flex;
	text-align: left;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Books_HD_%288314929977%29.jpg/1200px-Books_HD_%288314929977%29.jpg');
}

</style>
</head>
<body>
<div class="book">
    <div id="table root">
        <table border="2" width="100%" cellpadding="10">
            <thead>
                <tr>
                    <th>Book Id</th>
                    <th>Book Name</th>
                    <th>Date Of Publishing</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Stock In Hand</th>
                    <th>Sales</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${allbooks}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.dateOfPublishing}</td>
                        <td>${book.category}</td>
                        <td>${book.price}</td>
                        <td>${book.stockInHand}</td>
                        <td>${book.sales}</td>
                        <td><a href="updatebooks?bookid=${book.bookId}">Edit</a></td>
                        <td><a href="deletebook?bookid=${book.bookId}">Delete</a></td>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
</body>
</html>