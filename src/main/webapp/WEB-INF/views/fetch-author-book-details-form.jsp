<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View Author Royalty for Book</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	font-family: sans-serif;
	display: flex;
	text-align: left;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image:
		url('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Books_HD_%288314929977%29.jpg/1200px-Books_HD_%288314929977%29.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	display: inline-flex;
	background-color: AntiqueWhite;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 219px;
	box-shadow: 10px 20px 25px rgba(0, 0, 0, .3);
	overflow: hidden;
	max-width: 40%;
}

.header {
	border-bottom: 1px solid #fofofo;
	background-color: #bf9520;
	padding: 42px 186px
}

.form {
	background-color: #a1cd5a;
	border: none;
	border-radius: 2px;
	margin-bottom: 28px;
	overflow: hidden;
	padding: 0 .625em;
}

.form label {
	cursor: pointer;
	display: inline-block;
	padding: 3px 6px;
	text-align: left;
	width: 150px;
	vertical-align: top;
}

.form input {
	font-size: inherit;
	border-radious: 4px;
	padding: 8px;
}

p {
	text-align: center;
}

button {
	text-align: center;
    margin-left: 70px;
    width: 82px;
    height: 46px;
    margin-top: 27px;
}
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

h3 {
	color: #c51515;
}
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<h3>View Author Royalty for Book</h3>
			<br>
			<form class="form"
				action="/authorbookdetails/findauthorbookdetailsbyid" method="get"
				style="margin: 0;">
				<div>
					<label>Enter Book Id</label> <input type="text"
						placeholder="Book Id" name="bookid" pattern="^[0-9]+$"
						required="true">
				</div>
				<div>
					<label>Enter Author Id</label> <input type="text"
						placeholder="Author Id" name="authorid" pattern="^[0-9]+$"
						required="true"> <input type='submit' value="View"
						name="submit">
				</div>
			</form>
			<button onclick="document.location='/bookAdmin/index'">Back</button>
		</div>
	</div>
</body>
</html>