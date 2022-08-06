<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orderd History List</title>
</head>
<body>
    <div id="table root">
        <table>
            <thead>
                <tr>
                    <th>Ordered Id</th>
                    <th>Status</th>
                    <th>Shop Id</th>
                    <th>Ordered Date</th>
                     <th>Total Amount</th>
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
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>