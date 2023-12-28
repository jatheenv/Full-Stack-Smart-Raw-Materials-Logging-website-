<!-- confirmation.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Submitted Successfully</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- Optionally include Font Awesome icons or other resources -->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>

    <!-- Add custom CSS for a good-looking button -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            text-align: center;
            margin-top: 50px;
        }

        .btn-home {
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-home:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container mt-5">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Form Submitted Successfully!</h4>
            <p>Thank you for submitting the form. Your information has been successfully recorded.</p>
            <hr>
            <p class="mb-0">If you have any further questions, feel free to contact us.</p>
        </div>

        <!-- Button to redirect to index.jsp -->
        <a href="index.jsp" class="btn btn-home">Go to Home</a>
    </div>

    <!-- Include Bootstrap JS and any other necessary scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
