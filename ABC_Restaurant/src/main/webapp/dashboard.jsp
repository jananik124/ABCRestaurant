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
        .container {
            width: 90%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
        }
        .section h2 {
            margin-top: 0;
        }
        .box {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to the Dashboard</h1>
    </div>
    <div class="container">
        <div class="nav">
            <a href="profile.jsp">Profile</a>
            <a href="settings.jsp">Settings</a>
            <a href="reports.jsp">Reports</a>
            <a href="logout.jsp">Logout</a>
        </div>
        <div class="section">
            <h2>Overview</h2>
            <div class="box">
                <p>Here is a summary of key metrics and important information.</p>
                <!-- Add dashboard widgets or metrics here -->
            </div>
        </div>
        <div class="section">
            <h2>Recent Activity</h2>
            <div class="box">
                <p>Recent activities or updates can be displayed here.</p>
                <!-- Add recent activities or updates here -->
            </div>
        </div>
        <div class="section">
            <h2>Quick Links</h2>
            <div class="box">
                <p>Quick access links or frequently used features can be placed here.</p>
                <p><a href="ContactView.jsp">Contact</a></p>
                <p><a href="ReservationView.jsp">Reservation</a></p>
                <p><a href="UserView.jsp">User</a></p>
                <p><a href="HomeView.jsp">Home</a></p>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </div>
</body>
</html>
