<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<%@ include file="navbar.jsp" %>
</head>
<body>
<div class="container text-center mt-5">
        <h1>Welcome to Our Service</h1>
        <p class="lead">We are delighted to have you here.</p>
        <p class="lead">Please register if you are new, or login if you already have an account.</p>
        
        <div class="mt-4">
            <a href="/register" class="btn btn-primary btn-lg">Register</a>
            <a href="/login" class="btn btn-success btn-lg">Login</a>
        </div>
    </div>

    <footer class="footer mt-auto py-3 bg-dark text-white">
        <div class="container text-center">
            <span class="text-muted">© 2024 Our Service. All rights reserved.</span>
        </div>
    </footer>
</body>
</html>