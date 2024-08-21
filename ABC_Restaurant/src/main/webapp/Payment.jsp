<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proceed to Payment</title>
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

        .payment h2 {
            font-size: 32px;
            margin-bottom: 20px;
        }

        .payment-details, .billing-details {
            margin-bottom: 20px;
        }

        .payment-details h3, .billing-details h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .payment-details label, .billing-details label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
        }

        .payment-details input[type="text"],
        .billing-details input[type="text"],
        .billing-details input[type="email"],
        .billing-details input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
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
        <section class="payment">
            <h2>Proceed to Payment</h2>
            <form action="confirmPayment.jsp" method="post">
                <div class="payment-details">
                    <h3>Payment Details</h3>
                    <label for="cardName">Cardholder Name</label>
                    <input type="text" id="cardName" name="cardName" placeholder="John Doe" required>
                    
                    <label for="cardNumber">Card Number</label>
                    <input type="text" id="cardNumber" name="cardNumber" placeholder="1111-2222-3333-4444" required>
                    
                    <label for="expDate">Expiration Date</label>
                    <input type="text" id="expDate" name="expDate" placeholder="MM/YY" required>
                    
                    <label for="cvv">CVV</label>
                    <input type="text" id="cvv" name="cvv" placeholder="123" required>
                </div>

                <div class="billing-details">
                    <h3>Billing Address</h3>
                    <input type="text" placeholder="Address" required>
                    <input type="text" placeholder="City" required>
                    <input type="text" placeholder="State/Province" required>
                    <input type="text" placeholder="Zip/Postal Code" required>
                    <input type="email" placeholder="Email" required>
                    <input type="tel" placeholder="Phone Number" required>
                </div>

                <button type="submit">Confirm Payment</button>
            </form>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
