<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Books In stock</title>
<style>
body {
	background-image:
		url("https://us.123rf.com/450wm/wamsler/wamsler1408/wamsler140800080/30944287-rij-van-boeken-grungy-achtergrond-gratis-exemplaar-ruimte.jpg?ver=6");
	background-repeat: no-repeat;
	background-size: cover;
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	overflow: hidden;
}

h1 {
	text-align: center;
}

h2 {
	color: #382d9c;
	margin-top: 50px;
	text-align: center;
}

nav {
	background-color: #0ab57a;
	height: 50px;
	padding: 0;
	margin: 0;
	width: 100%;
}

ul {
	height: 50px;
	padding: 0;
	margin: 0;
	width: 100%;
}

li {
	display: inline-block;
	color: rgb(243, 221, 209);
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 16px;
	padding-bottom: 16px;
	cursor: pointer;
	justify-content: center;
	text-align: center;
	margin-left: 80px;
}

li:hover {
	background-color: rgb(236, 126, 126);
	color: rgb(54, 50, 48);
}

table {
	margin-top: 33px;
	margin-left: auto;
	margin-right: auto;
	width: 70%;
}

td, th {
	text-align: left;
	padding: 10px;
	/* width: 100px; */
}

.center_col {
	padding-left: 40px;
}

th {
	background-color: #d68989;
}

tr {
	background-color: #dcc0ec;
}

a {
	text-decoration: none;
	font-size: 20px;
}

h1 {
	font-family: lucida Handwriting, Cursive;
	color: white;
}

.navbar {
	overflow: hidden;
	background-color: #38fca4;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
	color: blue;
}

.dropdown .dropbtn {
	font-size: 23px;
	border: none;
	outline: none;
	color: #000000;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #a8a3dd;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
	background-color: FF00FF;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
	background-color: FF00FF;
}

en {
	color: blue;
}
</style>
</head>
<body>
	<h1 style="color: #bb0e0e">Welcome to Book Sales and Book
		Publishing !!!</h1>
	<nav>
		<ul>
			<div class="dropdown">
				<button class="dropbtn">
					All Books Details <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/book/booklist">Available Book List</a> <a
						href="/book/addbook">Add New Book</a> <a href="/book/findbookform">View
						Specific Book Details</a> <a href="/book/getbookform">View Book
						and Author's Book Royalty Details</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					All Authors Details <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/authors/authorslist">Authors List</a> <a
						href="/authors/addauthor">Add New Author</a> <a
						href="/authors/findauthorform">View Specific Author Details</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					All Authors Royalty Details <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/authorbookdetails/authorbookdetailslist">Author's
						Royalty List</a> <a href="/authorbookdetails/addauthorbookdetails">Add
						New Royalty for Authors</a> <a
						href="/authorbookdetails/findauthorbookdetailsform">View
						Author Royalty for Book</a> <a
						href="/authorbookdetails/deleteauthordetailsbyauthorform">Remove
						Author Book Royalty</a> <a
						href="/authorbookdetails/updateauthordetailsbyauthorform">Update
						Author Book Royalty</a> <a
						href="/authorbookdetails/findauthordetailsbyauthorform">View
						Author,Book and Royalty Details</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					Sell Book Details <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/orderdetails/orderdetailslist">Sold Book List</a> <a
						href="/orderdetails/addorderdetails">Sell Book</a> <a
						href="/orderdetails/findorderbookdetailsbyidform"> View Sold
						Book Details</a> <a href="/orderdetails/updateorderdetailsform">Update
						sold Book </a> <a href="/orderdetails/deleteorderbookdetailsform">Remove
						Sold Book Details </a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					All Orders History Details <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/orderdhistory/orderdhistorylist">All Ordered History
						List</a> <a href="/orderdhistory/addorderdhistory">Add New Ordered
						History</a> <a href="/orderdhistory/findorderhistoryform">View
						Ordered History Details </a> <a
						href="/orderdhistory/findorderhistorybyorderdetailsform">View
						OrderedHistory and Sold Books Details</a> <a
						href="/orderdhistory/findordershopdetailsform">View
						OrderedHistory and OrderedShop Details</a>
				</div>
			</div>

			<div class="dropdown">
				<button class="dropbtn">
					All Shop Details <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/shop/shoplist">Available Shop List</a> <a
						href="/shop/addshop">Add New Shop</a> <a href="/shop/findshopform">View
						Shop Details </a>
				</div>
			</div>

		</ul>
		<div id="table root">
			<table border="2" width="100%" cellpadding="10">
				<thead>
					<tr>
						<th>Author Id</th>
						<th>Book Id</th>
						<th>Royalty</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ahbk" items="${allauthorbookdetails}">
						<tr>
							<td>${ahbk.authorId}</td>
							<td>${ahbk.bookId}</td>
							<td>${ahbk.royalty}</td>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</nav>
</body>
</html>