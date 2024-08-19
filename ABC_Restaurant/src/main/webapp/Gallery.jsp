<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
        }
        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }
        header .logo {
            font-size: 24px;
            font-weight: bold;
        }
        header nav {
            display: flex;
        }
        header nav a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-size: 18px;
        }
        header nav a:hover {
            text-decoration: underline;
        }
        .section {
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
        }
        .gallery img {
            width: 100%;
            border-radius: 8px;
            margin-bottom: 10px;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">ABC Restaurant</div>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="NewFile.jsp">Services</a>
                <a href="offers.jsp">Offers</a>
                <a href="contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="reservation.jsp">Reservation</a>
                <a href="gallery.jsp">Gallery</a>
                
            </nav>
        </div>
    </header>

    <div class="section gallery">
        <h2>Gallery</h2>
        <img src="https://via.placeholder.com/800x600" alt="Dish 1">
        <img src="https://via.placeholder.com/800x600" alt="Dish 2">
        <img src="https://via.placeholder.com/800x600" alt="Dish 3">
        <!-- Add more images as needed -->
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
