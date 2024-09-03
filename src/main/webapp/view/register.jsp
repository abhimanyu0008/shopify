<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="container mt-5">
		<h2>Register</h2>
		<form action="${pageContext.request.contextPath}/register"
			method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="firstName">First Name:</label> <input type="text"
					class="form-control" id="firstName" name="firstName" required>
			</div>
			<div class="form-group">
				<label for="lastName">Last Name:</label> <input type="text"
					class="form-control" id="lastName" name="lastName" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="confirmPassword">Confirm Password:</label> <input
					type="password" class="form-control" id="confirmPassword"
					name="confirmPassword" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone Number:</label> <input type="text"
					class="form-control" id="phone" name="phone" required>
			</div>
			<div class="form-group">
				<label for="gender">Gender:</label> <select class="form-control"
					id="gender" name="gender" required>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
					<option value="Other">Other</option>
				</select>
			</div>
			<div class="form-group">
				<label for="resume">Resume (PDF):</label> <input type="file"
					class="form-control" id="resume" name="resume" accept=".pdf">
			</div>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="terms"
					name="terms" required> <label class="form-check-label"
					for="terms">I agree to the terms and conditions</label>
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
		</form>
		<c:if test="${not empty error}">
			<div class="alert alert-danger mt-3">${error}</div>
		</c:if>
		<c:if test="${not empty success}">
			<div class="alert alert-success mt-3">${success}</div>
		</c:if>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
	</script>
</body>
</html>

