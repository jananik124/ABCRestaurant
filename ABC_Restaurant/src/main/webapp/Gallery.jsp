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
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }
        header .logo img {
        width: 100px;
        height: 100px; /* Ensure the height is equal to the width for a perfect circle */
        border-radius: 50%; /* This makes the image round */
        margin-bottom: 5px;
        object-fit: cover; /* Ensures the image covers the entire area */
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
        .gallery {
            margin-top: 20px;
        }
        .gallery h2 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            color: #444;
        }
        .gallery .photos {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }
        .gallery img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .gallery img:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
             <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="Services.jsp">Services</a>
                <a href="Offers.jsp">Offers</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="Reservation.jsp">Reservation</a>
            </nav>
        </div>
    </header>

    <div class="section gallery">
        <h1>Gallery</h1>
        <div class="photos">
            <img src="https://images.pexels.com/photos/905847/pexels-photo-905847.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 2">
            <img src="https://images.pexels.com/photos/1566837/pexels-photo-1566837.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 3">
            <img src="https://images.pexels.com/photos/1552635/pexels-photo-1552635.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 5">
            <img src="https://images.pexels.com/photos/19130050/pexels-photo-19130050/free-photo-of-top-view-of-pizzas-with-different-toppings.png?auto=compress&cs=tinysrgb&w=600" alt="Dish 6">
            <img src="https://images.pexels.com/photos/1049626/pexels-photo-1049626.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 7">
            <img src="https://images.pexels.com/photos/365459/pexels-photo-365459.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 8">
            <img src="https://images.pexels.com/photos/7175422/pexels-photo-7175422.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load" alt="Dish 9">
            <img src="https://images.pexels.com/photos/14067666/pexels-photo-14067666.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load" alt="Dish 10">
            <img src="https://images.pexels.com/photos/16586528/pexels-photo-16586528/free-photo-of-a-person-pouring-olive-oil-on-a-pizza.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 1">
            <img src="https://images.pexels.com/photos/2762942/pexels-photo-2762942.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 4">
            <img src="https://images.pexels.com/photos/13946695/pexels-photo-13946695.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 4">
            <img src="https://images.pexels.com/photos/21077137/pexels-photo-21077137/free-photo-of-eating-pizza-with-salami-and-broccoli.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dish 4">
            
            
            
        </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
