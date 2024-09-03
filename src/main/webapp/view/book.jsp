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
    <h2 class="text-center mb-4">Book Registration Form</h2>
    <form action="registerBook" method="post" enctype="multipart/form-data">
        <div class="row mb-3">
            <label for="title" class="col-sm-2 col-form-label">Book Title</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="title" name="title" placeholder="Enter Book Title" required>
            </div>
        </div>
        
        <div class="row mb-3">
            <label for="author" class="col-sm-2 col-form-label">Author</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author Name" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="isbn" class="col-sm-2 col-form-label">ISBN</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="isbn" name="isbn" placeholder="Enter ISBN Number" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="publisher" class="col-sm-2 col-form-label">Publisher</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="publisher" name="publisher" placeholder="Enter Publisher Name" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="publicationDate" class="col-sm-2 col-form-label">Publication Date</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" id="publicationDate" name="publicationDate" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="category" class="col-sm-2 col-form-label">Category</label>
            <div class="col-sm-10">
                <select class="form-select" id="category" name="category" required>
                    <option value="">Select Category</option>
                    <option value="Fiction">Fiction</option>
                    <option value="Non-Fiction">Non-Fiction</option>
                    <option value="Science">Science</option>
                    <option value="Biography">Biography</option>
                    <option value="Fantasy">Fantasy</option>
                    <option value="Romance">Romance</option>
                    <option value="Thriller">Thriller</option>
                </select>
            </div>
        </div>
      <!--    <div class="row mb-3">
            <label for="bookCover" class="col-sm-2 col-form-label">Book Cover</label>
            <div class="col-sm-10">
                <input type="file" class="form-control" id="bookCover" name="bookCover" accept=".pdf,.jpg,.png" required>
            </div>-->
        </div>
        <div class="row mb-3">
            <div class="col-sm-10 offset-sm-2">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="terms" required>
                    <label class="form-check-label" for="terms">
                        I agree to the terms and conditions
                    </label>
                </div>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-sm-10 offset-sm-2">
                <button type="submit" class="btn btn-primary">Register Book</button>
            </div>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
