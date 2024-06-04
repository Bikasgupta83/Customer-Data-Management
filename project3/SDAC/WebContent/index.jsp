<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        color: #343a40;
    }

    .data1 {
        width: 100%;
        max-width: 500px;
        margin: 3rem auto;
        text-align: center;
    }

    ol {
        list-style-type: none;
        padding: 0;
    }

    ol li {
        margin: 1rem 0;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    ol li a {
        text-decoration: none;
        color: #fff;
        display: block;
        padding: 0.75rem 1.25rem;
        border-radius: 0.25rem;
        background-color: #007bff;
        box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    }

    ol li a:hover {
        background-color: #0056b3;
        color: #fff;
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        transform: translateY(-0.1rem);
    }

    .navbar-brand {
        font-size: 1.5rem;
        font-weight: bold;
    }

    .nav-link {
        transition: color 0.3s;
    }

    .nav-link:hover {
        color: #ff7f50;
    }

    .navbar {
        background: linear-gradient(45deg, #6a11cb, #2575fc);
    }

    .navbar .navbar-brand,
    .navbar .nav-link {
        color: #fff;
    }

    .container h2 {
        margin-top: 2rem;
        font-size: 2rem;
        font-weight: bold;
        text-align: center;
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">SDAC</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="insert.jsp">Insert</a></li>
                <li class="nav-item"><a class="nav-link" href="read.jsp">Read</a></li>
                <li class="nav-item"><a class="nav-link" href="update.jsp">Update</a></li>
                <li class="nav-item"><a class="nav-link" href="delete.jsp">Delete</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content area -->
<div class="container mt-5">
    <h2>Welcome to Customer Management System</h2>
    <div class="container data1">
        <div class="row">
            <div class="col-lg-12">
                <ol>
                    <li><a href="insert.jsp">Add New Customer</a></li>
                    <li><a href="read.jsp">Read Customers Data</a></li>
                    <li><a href="update.jsp">Update Customer Data</a></li>
                    <li><a href="delete.jsp">Delete Customer Data</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
