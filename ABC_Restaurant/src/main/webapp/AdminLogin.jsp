<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://wallpapers.com/images/hd/pizza-background-h4hj80ccg7yfkrow.jpg') no-repeat center center/cover;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .login-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #333;
            color: #fff;
            font-size: 16px;
        }
        .form-group button:hover {
            background-color: #555;
        }
        .error-message {
            color: red;
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="role">Login as:</label>
                <select id="role" name="role" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="admin">Admin</option>
                    <option value="restaurant">Restaurant</option>
                </select>
            </div>
            <div class="form-group">
                <button type="button" onclick="validateLogin()">Login</button>
            </div>
            <div class="error-message" id="error-message"></div>
        </form>
    </div>

    <script>
        function validateLogin() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var role = document.getElementById("role").value;
            var errorMessage = document.getElementById("error-message");

            errorMessage.textContent = ""; // Clear previous errors

            if (username === "" || password === "" || role === "") {
                errorMessage.textContent = "Please fill out all fields.";
                return;
            }

            // Dummy validation for demonstration (Replace with real validation)
            if ((role === "admin" && username === "admin" && password === "adminpass") ||
                (role === "restaurant" && username === "restaurant" && password === "restpass")) {
                alert("Login successful!");
                // Here you would normally redirect or handle successful login
            } else {
                errorMessage.textContent = "Invalid credentials.";
            }
        }
    </script>
</body>
</html>
