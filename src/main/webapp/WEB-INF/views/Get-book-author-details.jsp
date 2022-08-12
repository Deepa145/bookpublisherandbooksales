<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Fetch Form</title>
<style>
body {
/* background-color: AntiqueWhite; */
font-family: sans-serif;
display: flex;
text-align: left;
justify-content: center;
align-items: center;
height: 100vh;
margin: 0;
background-image:
url('https://wallpaperaccess.com/full/1759701.jpg');
}
</style>
</head>
<body>
    <h3>Get Book By Author Book Details</h3>
    <br>
    <form action="/book/getbookbyauthorbookdetails" method="get"
        style="margin: 0;">
        <label>Enter id </label> <input type="text" placeholder="book id"
            name="bookid"> <input type='submit' value="fetch" name="submit">
    </form>

</body>
</html>