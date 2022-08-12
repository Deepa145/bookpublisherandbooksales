<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%--  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
<style>
.book{
background-color: orange;
}
</style>
</head>
<body>
<div class="book">
    <div id="table root">
        <table border="2" width="100%" cellpadding="2">
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