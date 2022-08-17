<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Author Fetch Form</title>
<style>
<%@include file="/WEB-INF/cssfiles/fetchauthor.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
    <h3>View Author Details</h3>
    <br>
    <form class="form" action="/authors/findauthorbyid" method="get"
        style="margin: 0;">
        <label>Enter id </label> <input type="text" placeholder="Author Id"
            name="authorid" pattern="^[0-9]+$" required="true" > <input type='submit' value="View" name="submit">
    </form>
    <button onclick="document.location='/bookAdmin/index'">Back</button>
</div>
</div>
</body>
</html>