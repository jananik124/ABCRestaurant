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
        .hero {
            background: url('https://via.placeholder.com/1500x500') no-repeat center center/cover;
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
