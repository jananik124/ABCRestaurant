<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Payment Confirmation</title>
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
        .confirmation-message {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }
        .confirmation-message h1 {
            margin: 0;
        }
        .confirmation-message p {
            font-size: 18px;
            margin: 10px 0;
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
             <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>
            <nav>
                <a href="index.jsp">Home</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Order</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Cart.jsp">Cart (<span id="cart-count">0</span>)</a>
            </nav>
        </div>
    </header>

    <div class="section">
        <div class="confirmation-message">
            <h1>Payment Confirmation</h1>
            <p>Thank you for your Order!</p>
            <p>Your transaction has been successfully processed.</p>
            <p><strong>Order Number:</strong> <%= request.getParameter("orderNumber") %></p>
            <p><strong>Total Amount:</strong> Rs<%= request.getParameter("totalAmount") %></p>
            <p><strong>Payment Method:</strong> <%= request.getParameter("paymentMethod") %></p>
            <p><strong>Date and Time:</strong> <%= new java.util.Date() %></p>

            <a href="index.jsp">Return to Home</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>

