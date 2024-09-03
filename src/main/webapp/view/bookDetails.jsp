<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Details</title>
    <%@ include file="navbar.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Book Details</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>ISBN</th>
                <th>Publication Date</th>
                <th>Category</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${book.bookId}</td>
                <td>${book.bookTitle}</td>
                <td>${book.author}</td>
                <td>${book.ISBN}</td>
                <td>${book.publishDate}</td>
                <td>${book.category}</td>
                <td>${book.price}</td>
            </tr>
        </tbody>
    </table>
    <a href="/bookForm" class="btn btn-primary">Add Another Book</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
