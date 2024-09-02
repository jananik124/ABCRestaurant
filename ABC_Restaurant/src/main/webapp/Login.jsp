<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Login</title>
    <style>
        body {
            background: url('https://i.pinimg.com/564x/07/82/8d/07828da7a7c28fe224c2cd5b0a52151b.jpg') no-repeat center center/cover;
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
            max-width: 1200px;
            margin: 0 auto;
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
            padding: 80px 20px 20px;
            margin: 0 auto;
            max-width: 600px;
            width: 100%;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: white;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #555;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
        .register-link a {
            color: white;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo"><img src="Images/ABCLOGO.png" alt="ABC Restaurant"></div>
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

    <div class="section">
        <h1>Login</h1>
        <form id="loginForm" action="Login.jsp" method="post">
            <input type="text" id="email" name="email" placeholder="Email" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <div class="register-link">
            <p>Don't have an account? <a href="Register.jsp">Register here</a>.</p>
        </div>
    </div>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault();

            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;

            // Simple validation, can be enhanced
            if (email === "" || password === "") {
                alert("Please enter both email and password.");
                return;
            }

            // Submit the form if validation passes
            document.getElementById("loginForm").submit();
        });
    </script>
</body>
</html>

<%@ page import="com.restaurant.dao.UserDao" %>
<%@ page import="com.restaurant.model.UserModel" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (email != null && password != null) {
        UserDao userDAO = new UserDao();
        UserModel user = userDAO.loginUser(email, password);

        if (user != null) {
            // Store user details in session
            session.setAttribute("user", user);
            out.println("<script>alert('Login successful!');window.location.href='ProceedToCheckout.jsp';</script>");
        } else {
            out.println("<script>alert('Invalid email or password!');</script>");
        }
    }
%>
