<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        .logo img {
            width: 150px;
            height: 150px; /* Ensure the height is equal to the width for a perfect circle */
            border-radius: 50%; /* This makes the image round */
            margin-bottom: 5px;
            object-fit: cover; /* Ensures the image covers the entire area */
        }
        .container {
            width: 90%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .nav {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        .nav a {
            text-decoration: none;
            color: #333;
            padding: 10px 20px;
            border-radius: 4px;
            background-color: #eee;
        }
        .nav a:hover {
            background-color: #ddd;
        }
        .section {
            margin-bottom: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .section h2 {
            margin-top: 0;
            text-align: center;
        }
        .box {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 50%; /* Adjust the width as needed */
        }
        .box a {
            display: block;
            margin: 10px 0;
            color: #333;
            text-decoration: none;
        }
        .footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: #fff;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <%
        Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
        if (loggedIn == null || !loggedIn) {
            response.sendRedirect("AdminLogin.jsp");
            return;
        }
    %>
    <div class="header">
        <h1>Welcome to the Dashboard</h1>
        <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>
    </div>
   
    <div class="container">
        <div class="section">
            <h2>Quick Links</h2>
            <div class="box">
                <p><a href="ContactView.jsp">Contact</a></p>
                <p><a href="ReservationView.jsp">Reservation</a></p>
                <p><a href="UserView.jsp">User</a></p>
                <p><a href="OrderView.jsp">Order</a></p>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </div>
</body>
</html>
