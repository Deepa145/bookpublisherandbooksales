<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Order History Form</title>
<style>
<%@include file="/WEB-INF/cssfiles/fetchorderhistory.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
    <h3>View Ordered History Details</h3>
    <br>
    <form class="form" action="/orderdhistory/findorderdhistoriessbyid" method="get"
        style="margin: 0;">
        <div>
        <label>Enter Order Id </label> <input type="text" placeholder="Ordered History Id"
            name="orderdhistoriesid" pattern="^[0-9]+$" required="true"> <input type='submit' value="View" name="submit">
            </div>
    </form>
    <button onclick="document.location='/bookAdmin/index'">Back</button>
</div>
</div>
</body>
</html>