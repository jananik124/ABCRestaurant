<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.testaurant.service.OrderService" %>
<%@ page import="com.restaurant.model.OrderModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Order Details</title>
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
        .section {
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
        }
        .order-table {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .order-table table {
            width: 100%;
            border-collapse: collapse;
        }
        .order-table th, .order-table td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        .order-table th {
            background-color: #f4f4f4;
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
                <a href="Menu.jsp">Order</a>
                <a href="Reservation.jsp">Reservation</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Cart.jsp">Cart (<span id="cart-count">0</span>)</a>
            </nav>
        </div>
    </header>

    <div class="section">
        <div class="order-table">
            <h1>Order Details</h1>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Item Name</th>
                        <th>Total Amount</th>
                        <th>Customer Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Payment Method</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        OrderService orderService = new OrderService();
                        List<OrderModel> orders = orderService.getAllOrders();
                        for (OrderModel order : orders) {
                    %>
                        <tr>
                            <td><%= order.getId() %></td>
                            <td><%= order.getItemName() %></td>
                            <td>$<%= order.getTotalAmount() %></td>
                            <td><%= order.getCustomerName() %></td>
                            <td><%= order.getEmail() %></td>
                            <td><%= order.getPhone() %></td>
                            <td><%= order.getAddress() %></td>
                            <td><%= order.getPaymentMethod() %></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
