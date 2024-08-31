<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Reservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f4f4f4;
            background: url('https://images.pexels.com/photos/1552635/pexels-photo-1552635.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') no-repeat center center/cover;
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
        .reservation form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .reservation form label {
            display: block;
            font-size: 16px;
            margin: 10px 0 5px;
        }
        .reservation form input, .reservation form select, .reservation form textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        .reservation form button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
        }
        .reservation form button:hover {
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
                <a href="Menu.jsp">Menu</a>
                <a href="Gallery.jsp">Gallery</a>
            </nav>
        </div>
    </header>

    <div class="section reservation">
        <h2>Make a Reservation</h2>
        <form action="submit_reservation.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>

            <label for="guests">Number of Guests:</label>
            <input type="number" id="guests" name="guests" required>
            
            <label>Choose Dining Option:</label><br>
            <input type="radio" id="delivery" name="dining_option" value="delivery">
            <label for="delivery">Delivery</label><br>
            <input type="radio" id="dine-in" name="dining_option" value="dine-in">
            <label for="dine-in">Dine-In</label><br><br>

            <label for="special_requests">Special Requests:</label>
            <textarea id="special_requests" name="special_requests" rows="5"></textarea>

            <button type="submit">Reserve Table</button>
        </form>
    </div>



    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
