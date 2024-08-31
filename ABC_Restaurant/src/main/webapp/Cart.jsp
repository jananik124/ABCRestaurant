<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Cart</title>
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
                <a href="index.jsp">Home</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Cart.jsp">Cart (<span id="cart-count">0</span>)</a>
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
            <tbody id="cart-items">
                <!-- Cart items will be populated by JavaScript -->
            </tbody>
        </table>

        <div class="cart-summary">
            <h2>Cart Summary</h2>
            <p><strong>Subtotal:</strong> Rs<span id="subtotal">0.00</span></p>
            <p><strong>Tax (5%):</strong> Rs<span id="tax">0.00</span></p>
            <p><strong>Total:</strong> Rs<span id="total">0.00</span></p>
            
            <form action="Login.jsp" method="get">
                <button type="submit">Proceed to Checkout</button>
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>

    <script>
        function updateCart() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            let cartItems = document.getElementById('cart-items');
            let subtotal = 0;

            cartItems.innerHTML = '';

            cart.forEach((item, index) => {
                subtotal += item.price * item.quantity;
                cartItems.innerHTML += `
                    <tr>
                        <td>${item.name}</td>
                        <td>Rs${item.price.toFixed(2)}</td>
                        <td>${item.quantity}</td>
                        <td>Rs${(item.price * item.quantity).toFixed(2)}</td>
                        <td><button class="remove-btn" onclick="removeFromCart(${index})">Remove</button></td>
                    </tr>
                `;
            });

            let tax = subtotal * 0.05;
            let total = subtotal + tax;

            document.getElementById('subtotal').innerText = subtotal.toFixed(2);
            document.getElementById('tax').innerText = tax.toFixed(2);
            document.getElementById('total').innerText = total.toFixed(2);
            document.getElementById('cart-count').innerText = cart.length;
        }

        function removeFromCart(index) {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart.splice(index, 1);
            localStorage.setItem('cart', JSON.stringify(cart));
            updateCart();
        }

        window.onload = updateCart;
    </script>
</body>
</html>
