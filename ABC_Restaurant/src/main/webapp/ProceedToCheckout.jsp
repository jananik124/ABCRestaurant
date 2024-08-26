<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Proceed to Checkout</title>
    <style>
        body {
            background: url('https://wallpapers.com/images/hd/pizza-background-h4hj80ccg7yfkrow.jpg') no-repeat center center/cover;
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
        .checkout-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .checkout-form h2 {
            margin-top: 0;
        }
        .checkout-form label {
            display: block;
            margin-top: 15px;
            font-size: 16px;
        }
        .checkout-form input[type="text"],
        .checkout-form input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
        }
        .checkout-form button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 15px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 20px;
            width: 100%;
        }
        .checkout-form button:hover {
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
                <a href="index.jsp">Home</a>
                <a href="Services.jsp">Services</a>
                <a href="Offers.jsp">Offers</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Order</a>
                <a href="Reservation.jsp">Reservation</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Cart.jsp">Cart (<span id="cart-count">0</span>)</a>
            </nav>
        </div>
    </header>

    <div class="section">
        <div class="checkout-form">
            <h2>Checkout</h2>
            <form action="Checkout.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>

                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" required>

                <label for="expiry">Expiry Date:</label>
                <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required>

                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required>

                <input type="hidden" id="totalAmount" name="totalAmount" value="0.00">

                <button type="submit">Complete Purchase</button>
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>

    <script>
        function updateCheckoutTotal() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            let total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
            document.getElementById('totalAmount').value = total.toFixed(2);
        }

        window.onload = function() {
            updateCheckoutTotal();
            document.getElementById('cart-count').innerText = (JSON.parse(localStorage.getItem('cart')) || []).length;
        };
    </script>
</body>
</html>
