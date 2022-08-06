<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book List</title>
</head>
<body>
    <div id="table root">
        <table border="2" width="100%" cellpadding="2">
            <thead>
                <tr>
                    <th>Book Id</th>
                    <th>Book Name</th>
                    <th>Date Of Publishing</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Stock In Hand</th>
                    <th>Sales</th>
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
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>