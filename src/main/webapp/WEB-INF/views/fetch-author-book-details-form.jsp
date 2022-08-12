<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Author Book Details Form</title>
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
    <h3>Fetch Author Book Details</h3>
   <br>
    <form action="/authorbookdetails/findauthorbookdetailsbyid" method="get"
        style="margin: 0;">
        <label>Enter Book Id</label> <input type="text"
            placeholder="Book Id" name="bookid"> 
        <label>Enter Author Id</label> <input type="text" placeholder="Author Id"
            name="authorid"> <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>