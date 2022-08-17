<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Shop List</title>
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
	background-repeat: no-repeat;
	background-size: cover;
}
table, th, td{
border: 2px solid black;
height: 53px;
width: 445px;
}
button {
	text-align: center;
	margin-left: -20px;
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
            <thead>
                <tr>
                    <th>Shop Id</th>
                    <th>Shop Location</th>
                    <th>Contact Person</th>
                    <th>Phone Number</th>
                     <th>Edit</th>
                      <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="shop" items="${allshops}">
                    <tr>
                        <td>${shop.shopId}</td>
                        <td>${shop.shopLocation}</td>
                        <td>${shop.contactPerson}</td>
                        <td>${shop.phoneNumber}</td>
                         <td><a href="updateshop?shopid=${shop.shopId}">Edit</a></td>
                          <td><a href="deleteshop?shopid=${shop.shopId}">Delete</a></td>                        
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
</body>
</html>