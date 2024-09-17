<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.restaurant.dao.UserDao" %>
<%@ page import="com.restaurant.model.UserModel" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.Properties" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Register</title>
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
            color: white;
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
                boolean isRegistered = userDAO.registerUser(user);

                if (isRegistered) {
                    // Sending email to the user who just registered
                    String host = "smtp.gmail.com";
                    final String username = "jananikodithuwakku124@gmail.com"; // Replace with your email
                    final String passwordEmail = "ljoy pruu sczs airc"; // Replace with your app-specific password

                    String to = email; // Email of the registered user
                    String subject = "Welcome to ABC Restaurant!";
                    String body = "Dear " + name + ",\n\nThank you for registering at ABC Restaurant.\n\nBest regards,\nABC Restaurant Team";

                    Properties props = new Properties();
                    props.put("mail.smtp.auth", "true");
                    props.put("mail.smtp.starttls.enable", "true");
                    props.put("mail.smtp.host", host);
                    props.put("mail.smtp.port", "587");

                    Session emailSession = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(username, passwordEmail);
                            }
                        });

                    try {
                        Message message = new MimeMessage(emailSession);
                        message.setFrom(new InternetAddress(username));
                        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to)); // Send email to registered user
                        message.setSubject(subject);
                        message.setText(body);

                        Transport.send(message);

                        out.println("<script>alert('Registration successful! A confirmation email has been sent to " + to + ".');window.location.href='Login.jsp';</script>");
                    } catch (MessagingException e) {
                        out.println("<script>alert('Registration successful but email could not be sent.');window.location.href='Login.jsp';</script>");
                        e.printStackTrace();
                    }
                } else {
                    out.println("<script>alert('Registration failed! Please try again.');window.location.href='Register.jsp';</script>");
                }
            }
        }
    %>
</body>
</html>
