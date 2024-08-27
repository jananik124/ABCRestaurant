<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Register</title>
    <style>
        body {
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
            padding: 80px 20px 20px;
            margin: 0 auto;
            max-width: 600px;
            width: 100%;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="email"],
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
        .login-link {
            text-align: center;
            margin-top: 20px;
        }
        .login-link a {
            color: #333;
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
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
	    
    <div class="section">
        <h1>Register</h1>
        <form id="registerForm" action="Register.jsp" method="post">
            <input type="text" id="name" name="name" placeholder="Name" required>
            <input type="email" id="email" name="email" placeholder="Email" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            <p>Already have an account? <a href="Login.jsp">Login here</a>.</p>
        </div>
    </div>
</body>
</html>

<%@ page import="com.restaurant.dao.UserDao" %>
<%@ page import="com.restaurant.model.UserModel" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    if (name != null && email != null && password != null && confirmPassword != null) {
        if (!password.equals(confirmPassword)) {
            out.println("<script>alert('Passwords do not match!');window.location.href='Register.jsp';</script>");
        } else {
            UserModel user = new UserModel();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);

            UserDao userDAO = new UserDao();
            if (userDAO.registerUser(user)) {
                out.println("<script>alert('Registration successful!');window.location.href='Login.jsp';</script>");
            } else {
                out.println("<script>alert('Registration failed! Please try again.');window.location.href='Register.jsp';</script>");
            }
        }
    }
%>
