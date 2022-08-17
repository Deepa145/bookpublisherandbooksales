<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Shop List</title>
<style>
<%@include file="/WEB-INF/cssfiles/shoplist.css"%>
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