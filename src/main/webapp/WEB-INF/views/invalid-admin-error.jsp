<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
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

.container {
display: inline-flex;
background-color: AntiqueWhite;
display: flex;
justify-content: center;
align-items: center;
border-radius: 5px;
box-shadow: 10px 20px 25px rgba(0, 0, 0, .3);
overflow: hidden;
max-width: 100%;
}

.header {
border-bottom: 1px solid #fofofo;
background-color: SlateBlue;
padding: 20px 40px
}

.form {
background-color: SlateBlue;
border: none;
border-radius: 2px;
margin-bottom: 12px;
overflow: hidden;
padding: 0 .625em;
}

.form label {
cursor: pointer;
display: inline-block;
padding: 3px 6px;
text-align: right;
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
}

.text-danger {
color: #e80c4d;
font-size: 0.9em;
}
</style>
</head>
<body>
 <h2>Invalid User </h2>
 <div> Check your user name and password</div>
 <div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-2"></div>
			<div class="col-lg-6 col-md-8 login-box">
				<div class="col-lg-12 login-key">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				<div class="col-lg-12 login-title">ADMIN PANEL</div>

				<div class="col-lg-12 login-form">
					<div class="col-lg-12 login-form">
						<form:form action="checkadminlogin" method="post" modelAttribute="admin">
							<div class="form-group">
								<label class="form-control-label">USERNAME</label> <form:input
									type="text" class="form-control" path="name" placeholder="Username"/>
							</div>
							<div class="form-group">
								<label class="form-control-label">PASSWORD</label> <form:input
									type="password" class="form-control"  path="password" placeholder="Password"/>
							</div>

							<div class="col-lg-12 loginbttm">
								<div class="col-lg-6 login-btm login-text">
									<!-- Error Message -->
								</div>
								<div class="col-lg-6 login-btm login-button">
									<form:button type="submit" class="btn btn-outline-primary">LOGIN</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
				</div>
				</div>
				<div class="col-lg-3 col-md-2"></div>
			</div>        
</body>
</html>