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
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
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
    <div class="container">
        <h1>Register</h1>
        <form id="registerForm" action="Register.jsp" method="post">
            <input type="text" id="name" name="name" placeholder="Name" required>
            <input type="email" id="email" name="email" placeholder="Email" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
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
