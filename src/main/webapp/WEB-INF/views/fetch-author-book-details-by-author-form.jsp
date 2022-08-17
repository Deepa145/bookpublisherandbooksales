<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Author Book Details By Id Form</title>
<style>
<%@include file="/WEB-INF/cssfiles/fetchauthorbookdetailsbyauthor.css"%>
</style>
</head>
<body>
<div class="container" id="root">
		<div class="header" id="form">
    <h3>View Author,Book and Royalty Details</h3>
   <br>
    <form class="form" action="/authorbookdetails/getauthorsdetailsbyauthorid" method="get"
        style="margin: 0;">
        <div>
        <label>Enter Book Id</label> <input type="text"
            placeholder="Book Id" name="bookid" pattern="^[0-9]+$" required="true" > 
            </div>
            <div>
        <label>Enter Author Id</label> <input type="text" placeholder="Author Id"
            name="authorid" required="true" pattern="^[0-9]+$"> <input type='submit' value="View" name="submit">
            </div>
    </form>
    <button onclick="document.location='/bookAdmin/index'">Back</button>
</div>
</div>
</body>
</html>