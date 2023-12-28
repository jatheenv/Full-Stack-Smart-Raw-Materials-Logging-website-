<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Material Info Form</title>
    <!-- Include necessary CSS, Bootstrap, and other resources -->
    <!-- Add links to Bootstrap CSS, Font Awesome, etc. -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
    
        body {
            padding: 20px;
            background-image: url('./images/material.jpg');
            background-size: cover; /* Adjust according to your needs */
            background-repeat: no-repeat;
            background-attachment: fixed; /* Fixed background */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Ensure full height of the viewport */
        }

        .materialform {
            width: 400px; /* Adjust the width as needed */
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Light black box shadow */
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
        .close{
        	float:right;
        }

        
    </style>
</head>
<body>
    <section class="materialform">

        <!-- Your Material Info Form -->
        <form id="materialForm" action="MaterialFormServlet" method="post">
        <div>
        	<a href="./index.jsp"><button type="button" class="btn-close close" aria-label="Close"></button></a>
        	</div>
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name:</label>
                <input type="text" id="productName" name="productName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price(in rupees):</label>
                <input type="text" id="price" name="price" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="vendorName" class="form-label">Vendor Name:</label>
                <input type="text" id="vendorName" name="vendorName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity(in tons):</label>
                <input type="text" id="quantity" name="quantity" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="date" class="form-label">Date:</label>
                <input type="date" id="date" name="date" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
