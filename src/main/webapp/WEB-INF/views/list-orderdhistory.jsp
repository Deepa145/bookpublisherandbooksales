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
<%@include file="/WEB-INF/cssfiles/orderedhistorylist.css"%>
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