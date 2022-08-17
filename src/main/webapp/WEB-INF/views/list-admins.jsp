<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
<style>
<%@include file="/WEB-INF/cssfiles/adminlist.css"%>
</style>
</head>
<body>
<div class="book">
    <div id="table root">
			<table class="tb">
			<caption></caption>
            <thead>
                <tr>
                    <th>User Name</th>
                    <th>Password</th>                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${alladmins}">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.password}</td>                       
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
</body>
</html>