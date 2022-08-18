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
<%@include file="/WEB-INF/cssfiles/allpages.css"%>
</style>
</head>
<body>
	<h1 style="color: #bb0e0e">Welcome to Book Sales and Book
		Publishing !!!</h1>
		<button Class="button-85" role="button" onclick="document.location='/bookAdmin/index'">Back</button>
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
			<table class="tb">
			<caption></caption>
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