<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Response</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        .message {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            margin: 50px auto;
            width: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="message">
        <%
            String successMessage = (String) request.getAttribute("successMessage");
            String errorMessage = (String) request.getAttribute("errorMessage");

            if (successMessage != null) {
                out.println("<h1>" + successMessage + "</h1>");
            } else if (errorMessage != null) {
                out.println("<h1>" + errorMessage + "</h1>");
            } else {
                out.println("<h1>Error</h1>");
                out.println("<p>Unexpected issue occurred.</p>");
            }
        %>
        <p><a href="contact.jsp">Go back to the contact page</a></p>
    </div>
</body>
</html>
