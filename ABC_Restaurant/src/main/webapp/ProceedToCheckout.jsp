<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Proceed to Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input[readonly] {
            background-color: #f9f9f9;
        }
        .form-control {
            margin-bottom: 10px;
        }
        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Checkout</h1>
        <form action="Checkout.jsp" method="post">
            <!-- Item Name -->
            <div class="form-group">
                <label for="itemName">Item Name:</label>
                <input type="text" id="itemName" name="itemName" class="form-control" value="${itemName}" readonly>
            </div>
            <!-- Total Amount -->
            <div class="form-group">
                <label for="totalAmount">Total Amount:</label>
                <input type="text" id="totalAmount" name="totalAmount" class="form-control" value="${totalAmount}" readonly>
            </div>
            <!-- Customer Name -->
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <!-- Email -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <!-- Phone -->
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" class="form-control" required>
            </div>
            <!-- Address -->
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" class="form-control" required></textarea>
            </div>
            <!-- Payment Method -->
            <div class="form-group">
                <label for="paymentMethod">Payment Method:</label>
                <select id="paymentMethod" name="paymentMethod" class="form-control" required>
                    <option value="creditCard">Credit Card</option>
                    <option value="paypal">PayPal</option>
                    <option value="cashOnDelivery">Cash on Delivery</option>
                </select>
            </div>
            <!-- Submit Button -->
            <button type="submit" class="btn-primary">Proceed to Checkout</button>
        </form>
    </div>

    <script>
        function updateCheckoutTotal() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            let total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
            document.getElementById('totalAmount').value = total.toFixed(2);

            if (cart.length > 0) {
                document.getElementById('itemName').value = cart.map(item => item.name).join(", ");
            } else {
                document.getElementById('itemName').value = "No items in cart";
            }
        }

        window.onload = function() {
            updateCheckoutTotal();
        };
    </script>
</body>
</html>
