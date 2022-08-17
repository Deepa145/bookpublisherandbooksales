<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View shop details</title>
<style>
<%@include file="/WEB-INF/cssfiles/fetchshop.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
    <h3>View Shop Details</h3>
    <br>
    <form class="form" action="/shop/findshopbyid" method="get"
        style="margin: 0;">
        <div>
        <label>Enter Shop id </label> <input type="text" placeholder="Shop Id"
            name="shopid" pattern="^[0-9]+$" required="true"> <input type='submit' value="View" name="submit">
            </div>
    </form>
    <button onclick="document.location='/bookAdmin/index'">Back</button>
</div>
</div>
</body>
</html>