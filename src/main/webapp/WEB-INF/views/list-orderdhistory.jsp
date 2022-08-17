<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Ordered History List</title>
<style>
.book{
background-color: #0eddbc;
}
body {
	font-family: sans-serif;
	display: flex;
	text-align: left;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Books_HD_%288314929977%29.jpg/1200px-Books_HD_%288314929977%29.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
table, th, td{
border: 2px solid black;
height: 53px;
width: 670px;
}
button {
	text-align: center;
	margin-left: -15px;
	width: 100px;
	height: 35px;
	margin-top: 10px;
}
</style>
</head>
<body>
<p>
<button onclick="document.location='/bookAdmin/index'">Back</button>
</p>
<div class="book">
    <div id="table root">
         <table class="tb">
         <caption></caption>
            <thead>
                <tr>
                    <th>Ordered Id</th>
                    <th>Status</th>
                    <th>Shop Id</th>
                    <th>Ordered Date</th>
                     <th>Total Amount</th>
                      <th>Edit</th>
                       <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="orderdhistories" items="${allOrderdHistories}">
                    <tr>
                        <td>${orderdhistories.orderedId}</td>
                        <td>${orderdhistories.status}</td>
                        <td>${orderdhistories.shopId}</td>
                        <td>${orderdhistories.orderedDate}</td>
                         <td>${orderdhistories.totalAmount}</td>
                          <td><a href="updateorderdhistories?orderdhistoriesid=${orderdhistories.orderedId}">Edit</a></td>
                           <td><a href="deleteorderdhistories?orderdhistoriesid=${orderdhistories.orderedId}">Delete</a></td>                        
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
</body>
</html>