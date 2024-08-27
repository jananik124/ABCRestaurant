<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Reservation Status</title>
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
        .message.success {
            border-left: 5px solid green;
        }
        .message.error {
            border-left: 5px solid red;
        }
    </style>
</head>
<body>
    <div class="message <%= request.getAttribute("status").equals("success") ? "success" : "error" %>">
        <h1><%= request.getAttribute("message") %></h1>
        <p><a href="${pageContext.request.contextPath}/reservation.jsp">Go back to the reservation page</a></p>
    </div>
</body>
</html>
