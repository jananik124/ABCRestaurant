<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Offers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f4f4f4;
            background: url('https://i.pinimg.com/564x/23/a7/e3/23a7e344aa4651fc1c3caa10667b6904.jpg') no-repeat center center/cover;
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
        .hero {
            background: url('https://i.pinimg.com/564x/ca/f0/b4/caf0b4810314710720ac1ff7c9c2c340.jpg') no-repeat center center/cover;
            color: #fff;
            text-align: center;
            padding: 100px 20px;
        }
        .hero h1 {
            font-size: 48px;
            margin: 0;
        }
        .hero p {
            font-size: 24px;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .offers {
            margin: 20px 0;
        }
        .offers h2 {
            font-size: 36px;
            margin-bottom: 20px;
            text-align: center;
        }
        .offers .offer-item {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .offers .offer-item h3 {
            margin: 0;
            font-size: 28px;
        }
        .offers .offer-item p {
            margin: 10px 0 0;
            font-size: 16px;
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
            <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>.
            
            <nav>
                <a href="index.jsp">Home</a>
                <a href="Service.jsp">Services</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="Reservation.jsp">Reservation</a>
                <a href="Gallery.jsp">Gallery</a>
               
            </nav>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Special Offers</h1>
            <p>Discover our exciting offers and promotions.</p>
        </div>
    </section>

    <div class="container">
        <section class="offers">
            <h2>Current Offers</h2>
            <div class="offer-item">
                <h3>Happy Hour</h3>
                <p>Enjoy 50% off on all drinks from 5 PM to 7 PM daily. Perfect for unwinding after work!</p>
            </div>
            <div class="offer-item">
                <h3>Weekend Brunch</h3>
                <p>Join us for a delightful weekend brunch with a special menu available every Saturday and Sunday.</p>
            </div>
            <div class="offer-item">
                <h3>Birthday Special</h3>
                <p>Celebrate your birthday with us and get a free dessert with every main course ordered. Bring your friends and family!</p>
            </div>
            <div class="offer-item">
                <h3>Early Bird Discount</h3>
                <p>Get a 20% discount on all orders placed before 12 PM. Start your day with a great meal at a great price.</p>
            </div>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
