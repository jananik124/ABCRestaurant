<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Login</title>
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
            color: #333;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
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
            out.println("<script>alert('Login successful!');window.location.href='index.jsp';</script>");
        } else {
            out.println("<script>alert('Invalid email or password!');</script>");
        }
    }
%>
