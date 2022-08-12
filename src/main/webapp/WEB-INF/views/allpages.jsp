<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books In stock</title>
<style>
body {
	background-image: url("https://wallpaperaccess.com/full/1759701.jpg");
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
	background-color: Orange;
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
	margin-top: 25px;
	margin-left: auto;
	margin-right: auto;
	width: 100%;
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

tr:nth-child(odd) {
	background-color: #ecc0c0;
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
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: #000000;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #fa6e6e;
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
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<h1 style="color: maroon;">Welcome to Book Sales and Book
		Publishing !!!</h1>
	<nav>
		<ul>
			<div class="dropdown">
				<button class="dropbtn">
					Book Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="/book/booklist">All Book List</a>
					 <a href="/book/addbook">Add New Book</a>
					 <a href="/book/findbookform">View a Book</a> 
					 <a href="/book/getbookform">View Book Details By Author</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					Author Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="/authors/authorslist">Authors List In Book</a>
					<a href="/authors/addauthor">Add New Author</a>
					<a	href="/authors/findauthorform">View Author's Details</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					Author Book Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="/authorbookdetails/authorbookdetailslist">Author's
						Book Details List</a> <a
						href="/authorbookdetails/addauthorbookdetails">Add New
						Author's Book details</a> <a
						href="/authorbookdetails/findauthorbookdetailsform">View
						Author's Book Details</a> <a
						href="/authorbookdetails/deleteauthordetailsbyauthorform">Delete
						Author's Book Details</a> <a
						href="/authorbookdetails/updateauthordetailsbyauthorform">Update
						Author's Book Details</a> <a
						href="/authorbookdetails/findauthordetailsbyauthorform">View
						Author's Details</a>
				</div>
			</div>
 <div class="dropdown">
				<button class="dropbtn">
					Order Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
<a href="/orderdetails/orderdetailslist">Ordered Details List</a>
<a href="/orderdetails/addorderdetails">Add Ordered Details</a>
<a href="/orderdetails/findorderbookdetailsbyidform">View Ordered Book Details</a>
<a href="/orderdetails/updateorderdetailsform">Update Order Book Details</a>
<a href="/orderdetails/deleteorderbookdetailsform">Delete Order Book Details</a>
</div>
</div>
			<div class="dropdown">
				<button class="dropbtn">
					Order History Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="/orderdhistory/orderdhistorylist">Ordered History List</a>
					<a href="/orderdhistory/addorderdhistory">Add Ordered History</a>
					<a href="/orderdhistory/findorderhistoryform">View Ordered History</a>
					<a href="/orderdhistory/findorderhistorybyorderdetailsform">View Order History</a>
				    <a href="/orderdhistory/findordershopdetailsform">View Ordered Shop Details</a>
				</div>
			</div>

			<div class="dropdown">
				<button class="dropbtn">
					Shop Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="/shop/shoplist">Shop List</a>
					<a href="/shop/addshop">Add Shop</a>
				    <a href="/shop/findshopform">View Order Shop</a>
				</div>
			</div>

		</ul>
		<div id="table root">
			<table style="width:70%">
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