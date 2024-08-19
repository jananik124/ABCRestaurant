<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Cart</title>
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
        .cart-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .cart-table th, .cart-table td {
            padding: 15px;
            text-align: left;
        }
        .cart-table th {
            background-color: #333;
            color: #fff;
        }
        .cart-table td {
            border-bottom: 1px solid #ddd;
        }
        .cart-table img {
            width: 100px;
            border-radius: 4px;
        }
        .cart-table .remove-btn {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
        }
        .cart-table .remove-btn:hover {
            background-color: #c0392b;
        }
        .cart-summary {
            margin-top: 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .cart-summary h2 {
            margin-top: 0;
        }
        .cart-summary p {
            font-size: 18px;
            margin: 10px 0;
        }
        .cart-summary button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
        }
        .cart-summary button:hover {
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
            </nav>
        </div>
    </header>

    <div class="section">
        <h2>Your Cart</h2>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img src="https://via.placeholder.com/100x100" alt="Dish 1"> Dish 1</td>
                    <td>$10.00</td>
                    <td>2</td>
                    <td>$20.00</td>
                    <td><button class="remove-btn">Remove</button></td>
                </tr>
                <tr>
                    <td><img src="https://via.placeholder.com/100x100" alt="Dish 2"> Dish 2</td>
                    <td>$15.00</td>
                    <td>1</td>
                    <td>$15.00</td>
                    <td><button class="remove-btn">Remove</button></td>
                </tr>
                <!-- Add more items as needed -->
            </tbody>
        </table>

        <div class="cart-summary">
            <h2>Cart Summary</h2>
            <p><strong>Subtotal:</strong> $35.00</p>
            <p><strong>Tax (5%):</strong> $1.75</p>
            <p><strong>Total:</strong> $36.75</p>
            <button type="button">Proceed to Checkout</button>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
