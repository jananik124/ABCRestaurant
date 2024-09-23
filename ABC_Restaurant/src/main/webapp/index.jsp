<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        background-color: #5D6D7E;
        background: url('https://i.pinimg.com/564x/ee/39/84/ee3984dee152a317a489e2940cfa1063.jpg') no-repeat center center/cover;
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
    
    .hero {
        background: url('https://images.pexels.com/photos/1581384/pexels-photo-1581384.jpeg') no-repeat center center/cover;
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
    
    .search-bar {
        margin: 20px;
        display: flex;
        justify-content: center;
    }
    
    .search-bar input[type="text"] {
        width: 300px;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    
    .search-bar button {
        background-color: #333;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 4px;
        margin-left: 10px;
    }
    
    .search-bar button:hover {
        background-color: #555;
    }
    
    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }
    
    img {
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 5px;
        width: 150px;
    }
    
    .services, .offers, .contact {
        margin: 20px 0;
    }
    
    .services h2, .offers h2, .contact h2 {
        font-size: 36px;
        margin-bottom: 20px;
    }
    
    .services h3, .offers h3, .contact h3 {
        color: #8B4513;
        text-decoration: none;
    }
    
    .services .service-item, .offers .offer-item {
        background-color: #F0F8FF;
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    .contact form {
        display: flex;
        flex-direction: column;
    }
    
    .contact form input, .contact form textarea {
        margin-bottom: 10px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    
    .contact form button {
        padding: 10px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
    .contact form button:hover {
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
            <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>
             
            <nav>
                <a href="index.jsp">Home</a>
                <a href="Services.jsp">Services</a>
                <a href="Offers.jsp">Offers</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="Reservation.jsp">Reservation</a>
                <a href="Gallery.jsp">Gallery</a>
                
            </nav>
            
        </div>
        <section class="search-bar">
            <form action="Menu.jsp" method="get">
                <input type="text" name="query" placeholder="Search..." value="${param.query}">
                <button type="submit">Search</button>
            </form>
        </section>
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
                <h3><a href="Services.jsp">Fine Dining</a></h3>
                <p>Experience gourmet dishes prepared by our top chefs.</p>
            </div>
            <div class="service-item">
                <h3><a href="Services.jsp">Event Hosting</a></h3>
                <p>Host your special events in our elegant banquet halls.</p>
            </div>
        </section>

        <section class="offers" id="offers">
            <h2>Special Offers</h2>
            <div class="offer-item">
                <h3><a href="Offers.jsp">Happy Hour</a></h3>
                <p>Enjoy 50% off on drinks from 5 PM to 7 PM daily.</p>
            </div>
            <div class="offer-item">
                <h3><a href="Offers.jsp">Weekend Brunch</a></h3>
                <p>Special brunch menu available every Saturday and Sunday.</p>
            </div>
        </section>

    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
