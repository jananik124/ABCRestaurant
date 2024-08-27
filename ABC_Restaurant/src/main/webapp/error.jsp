<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background-color: #f4f4f4;
        }
        .error-message {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            display: inline-block;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="error-message">
        <h1>Something went wrong</h1>
        <p>We encountered an error while processing your request.</p>
        <p><a href="index.jsp">Go back to the home page</a></p>
    </div>
</body>
</html>
