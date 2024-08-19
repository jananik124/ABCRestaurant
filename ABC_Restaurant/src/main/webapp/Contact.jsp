<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Contact Us</title>
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
        .contact-info {
            margin: 20px 0;
        }
        .contact-info h2 {
            font-size: 36px;
            margin-bottom: 20px;
            text-align: center;
        }
        .contact-info p {
            font-size: 18px;
            margin: 10px 0;
            text-align: center;
        }
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
        }
        .contact-form h3 {
            font-size: 28px;
            margin-bottom: 20px;
            text-align: center;
        }
        .contact-form label {
            display: block;
            font-size: 16px;
            margin: 10px 0 5px;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        .contact-form button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
        }
        .contact-form button:hover {
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
            <h1>Contact Us</h1>
            <p>We'd love to hear from you! Reach out to us with any questions or feedback.</p>
        </div>
    </section>

    <div class="container">
        <section class="contact-info">
            <h2>Contact Information</h2>
            <p><strong>Address:</strong> 123 Restaurant Street, Colombo, Sri Lanka</p>
            <p><strong>Phone:</strong> +94 123 456 789</p>
            <p><strong>Email:</strong> info@abcrestaurant.lk</p>
        </section>

        <section class="contact-form">
            <h3>Send Us a Message</h3>
            <form action="submit_form.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">Send Message</button>
            </form>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
