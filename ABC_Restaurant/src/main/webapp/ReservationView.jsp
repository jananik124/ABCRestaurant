<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.restaurant.dao.ReservationDAO" %>
<%@ page import="com.restaurant.model.ReservationModel" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Reservations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        header .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .section {
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
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
        <div class="logo">ABC Restaurant</div>
    </header>

    <div class="section">
        <h2>All Reservations</h2>
        <%
            ReservationDAO reservationDAO = new ReservationDAO();
            List<ReservationModel> reservations = reservationDAO.getAllReservations();
        %>
        <table>
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Date</th>
                <th>Time</th>
                <th>Guests</th>
                <th>Dining Option</th>
                <th>Special Requests</th>
            </tr>
            <%
                for (ReservationModel reservation : reservations) {
            %>
            <tr>
                <td><%= reservation.getName() %></td>
                <td><%= reservation.getPhone() %></td>
                <td><%= reservation.getDate() %></td>
                <td><%= reservation.getTime() %></td>
                <td><%= reservation.getGuests() %></td>
                <td><%= reservation.getDiningOption() %></td>
                <td><%= reservation.getSpecialRequests() %></td>
            </tr>
            <%
                }
            %>
        </table>
        <p><a href="reservation.jsp">Go back to the reservation page</a></p>
    </div>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
