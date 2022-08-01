<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop List</title>
</head>
<body>
    <div id="table root">
        <table>
            <thead>
                <tr>
                    <th>Shop Id</th>
                    <th>Shop Location</th>
                    <th>Contact Person</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="shop" items="${allshops}">
                    <tr>
                        <td>${shop.shopId}</td>
                        <td>${shop.shopLocation}</td>
                        <td>${shop.contactPerson}</td>
                        <td>${shop.phoneNumber}</td>                        
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>