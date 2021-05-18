<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Online Payments</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand"> Online Payments </a>
			</div>

			
			
			
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Account Number</label> <input type="text"
						value="<c:out value='${user.accountNumber}' />" class="form-control"
						name="accountNumber" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name">
				</fieldset>

				<fieldset class="form-group">
					<label>phone number</label> <input type="text"
						value="<c:out value='${user.phoneNumber}' />" class="form-control"
						name="phoneNumber">
				</fieldset>
				
				<fieldset class="form-group">
					<label>district</label> <input type="text"
						value="<c:out value='${user.district}' />" class="form-control"
						name="district">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
	
			<ul class="admin" style="text-align:center; margin-top:80px;">
				
				<li><a href="AdminLogin.jsp">View Users(!!!For administrative purposes only!!! )</a></li>
			</ul>
	
</body>
</html>
