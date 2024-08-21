<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proceed to Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
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

        header nav a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-size: 18px;
        }

        header nav a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            font-size: 32px;
            margin-bottom: 20px;
        }

        .cart-items {
            margin-bottom: 20px;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .cart-item:last-child {
            border-bottom: none;
        }

        .cart-item img {
            width: 100px;
            height: auto;
            border-radius: 4px;
            margin-right: 20px;
        }

        .item-details {
            flex: 1;
        }

        .item-details h3 {
            font-size: 20px;
            margin: 0;
        }

        .item-details p {
            margin: 5px 0;
        }

        .item-quantity {
            margin-right: 20px;
            display: flex;
            align-items: center;
        }

        .item-quantity input {
            width: 50px;
            text-align: center;
            padding: 5px;
            margin-right: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .item-price {
            font-size: 18px;
            font-weight: bold;
        }

        .total {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
            border-top: 2px solid #ddd;
            margin-top: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        button[type="submit"] {
            width: 100%;
            padding: 15px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #555;
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
            <div class="logo">ABC Restaurant</div>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="Menu.jsp">Menu</a>
                <a href="cart.jsp">Cart</a>
                <a href="checkout.jsp">Checkout</a>
                <a href="payment.jsp">Payment</a>
            </nav>
        </div>
    </header>

    <div class="container">
        <h2>Checkout</h2>
        <div class="cart-items">
            <div class="cart-item">
                <img src="https://via.placeholder.com/100" alt="Item 1">
                <div class="item-details">
                    <h3>Item 1</h3>
                    <p>Description of item 1.</p>
                </div>
                <div class="item-quantity">
                    <input type="number" value="1" min="1">
                </div>
                <div class="item-price">$19.99</div>
            </div>
            <div class="cart-item">
                <img src="https://via.placeholder.com/100" alt="Item 2">
                <div class="item-details">
                    <h3>Item 2</h3>
                    <p>Description of item 2.</p>
                </div>
                <div class="item-quantity">
                    <input type="number" value="2" min="1">
                </div>
                <div class="item-price">$29.99</div>
            </div>
        </div>

        <div class="total">
            <span>Total:</span>
            <span>$79.97</span>
        </div>

        <button type="submit" onclick="location.href='payment.jsp'">Proceed to Payment</button>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
