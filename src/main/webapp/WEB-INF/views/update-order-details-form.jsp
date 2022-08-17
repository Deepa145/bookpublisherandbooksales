<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Order Book Details Form</title>
<style>
<%@include file="/WEB-INF/cssfiles/updatesoldbook.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
    <h3>Update sold Book </h3>
   <br>
    <form action="/orderdetails/updateorderdetails" method="get"
        style="margin: 0;">
        <div>
        <label>Enter Order Id</label> <input type="text"
            placeholder="Order Id" type="number" name="orderedid" pattern="^[0-9]+$" required="true" > 
            </div>
            <div>
        <label>Enter Book Id</label> <input type="text" placeholder="Book Id"
            name="bookid" type="number" pattern="^[0-9]+$" required="true" > <input type='submit' value="Update" name="submit">
            </div>
    </form>
    <button onclick="document.location='/bookAdmin/index'">Back</button>
</div>
</div>
</body>
</html>