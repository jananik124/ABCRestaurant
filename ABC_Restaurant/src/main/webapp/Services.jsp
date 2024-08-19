<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant</title>
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
        .services {
            margin: 20px 0;
        }
        .services h2 {
            font-size: 36px;
            margin-bottom: 20px;
            text-align: center;
        }
        .services .service-item {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
        }
        .services .service-item img {
            max-width: 150px;
            border-radius: 8px;
            margin-right: 20px;
        }
        .services .service-item h3 {
            margin: 0;
            font-size: 28px;
        }
        .services .service-item p {
            margin: 10px 0 0;
            font-size: 16px;
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
                <a href="offers.jsp">Offers</a>
                <a href="contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="reservation.jsp">Reservation</a>
                <a href="gallery.jsp">Gallery</a>
                
            </nav>
        </div>
    </header>

    <section class="hero" id="home">
        <div class="container">
            <h1>Welcome to ABC Restaurant</h1>
            <p>Enjoy the finest dining experience with us!</p>
        </div>
    </section>

    <div class="container">
        <section class="services" id="services">
            <h2>Our Services</h2>
            <div class="service-item">
                <img src="https://via.placeholder.com/150" alt="Fine Dining">
                <div>
                    <h3>Fine Dining</h3>
                    <p>Experience gourmet dishes prepared by our top chefs. Our fine dining service offers a luxurious atmosphere and exceptional cuisine.</p>
                </div>
            </div>
            <div class="service-item">
                <img src="https://via.placeholder.com/150" alt="Event Hosting">
                <div>
                    <h3>Event Hosting</h3>
                    <p>Host your special events in our elegant banquet halls. We provide personalized service to ensure your event is memorable and successful.</p>
                </div>
            </div>
            <div class="service-item">
                <img src="https://via.placeholder.com/150" alt="Delivery Service">
                <div>
                    <h3>Delivery Service</h3>
                    <p>Enjoy our delicious meals from the comfort of your home with our fast and reliable delivery service. We ensure your order arrives fresh and on time.</p>
                </div>
            </div>
            <div class="service-item">
                <img src="https://via.placeholder.com/150" alt="Catering">
                <div>
                    <h3>Catering</h3>
                    <p>Let us cater your next event with a wide range of menu options. Our catering service is perfect for corporate events, weddings, and private parties.</p>
                </div>
            </div>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
