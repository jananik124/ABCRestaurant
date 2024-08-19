<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Order</title>
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
        .dish {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
            display: flex;
            align-items: center;
        }
        .dish img {
            width: 150px;
            border-radius: 4px;
            margin-right: 20px;
        }
        .dish h3 {
            margin: 0;
        }
        .dish button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .dish button:hover {
            background-color: #555;
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
                <a href="index.html">Home</a>
                <a href="orders.jsp">Order</a>
                <a href="menu.html">Menu</a>
                <a href="offers.html">Offers</a>
                <a href="reservation.html">Reservation</a>
                <a href="gallery.html">Gallery</a>
                <a href="contact.html">Contact</a>
                <a href="Cart.jsp">Cart (<span id="cart-count">0</span>)</a>
            </nav>
        </div>
    </header>

    <div class="section">
        <h2>Order Dishes</h2>
        <div class="dish">
            <img src="https://via.placeholder.com/150x150" alt="Dish 1">
            <div>
                <h3>Dish 1</h3>
                <p>$10.00</p>
                <a href="Cart.jsp"><button onclick="addToCart('Dish 1', 10.00)">Add to Cart</button></a>
            </div>
        </div>
        <div class="dish">
            <img src="https://via.placeholder.com/150x150" alt="Dish 2">
            <div>
                <h3>Dish 2</h3>
                <p>$15.00</p>
                <a href="Cart.jsp"><button onclick="addToCart('Dish 2', 15.00)">Add to Cart</button></a>
            </div>
        </div>
        <!-- Add more dishes as needed -->
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>

    <script>
        function addToCart(dishName, price) {
            // Get existing cart data from localStorage
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            
            // Add new item to cart
            cart.push({ name: dishName, price: price, quantity: 1 });

            // Save updated cart data to localStorage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Update cart count
            document.getElementById('cart-count').innerText = cart.length;
        }

        // Update cart count on page load
        window.onload = function() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            document.getElementById('cart-count').innerText = cart.length;
        };
    </script>
</body>
</html>
