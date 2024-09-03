<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navbar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/home">Navbar</a>
        <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- Search form in the middle -->
            <form class="d-flex mx-auto">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active"
                    aria-current="page" href="/home">Home</a>
                </li>
                <li class="nav-item"><a class="nav-link active"
                    aria-current="page" href="/bookDetails">Add</a>
                </li>
                <li class="nav-item"><a class="nav-link active"
                    aria-current="page" href="/bookDetails">Show</a>
                </li>
                <li class="nav-item"><a class="nav-link active" href="/register">Register</a></li>
                <li class="nav-item"><a class="nav-link active" href="/login">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>


</body>
</html>