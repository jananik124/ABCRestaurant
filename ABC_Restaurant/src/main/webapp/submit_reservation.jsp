<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.restaurant.dao.ReservationDAO" %>
<%@ page import="com.restaurant.model.ReservationModel" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Reservation Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        .message {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            margin: 50px auto;
            width: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="message">
        <%
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            int guests = Integer.parseInt(request.getParameter("guests"));
            String specialRequests = request.getParameter("special_requests");

            if (name != null && phone != null && date != null && time != null) {
                ReservationModel reservation = new ReservationModel(name, phone, date, time, guests, specialRequests);
                ReservationDAO reservationDAO = new ReservationDAO();
                boolean isSaved = reservationDAO.saveReservation(reservation);

                if (isSaved) {
                    out.println("<h1>Reservation Confirmed!</h1>");
                    out.println("<p>Your reservation has been successfully made. We look forward to serving you!</p>");
                } else {
                    out.println("<h1>Oops!</h1>");
                    out.println("<p>Something went wrong. Please try again later.</p>");
                }
            } else {
                out.println("<h1>Error</h1>");
                out.println("<p>Required fields are missing.</p>");
            }
        %>
        <p><a href="Reservation.jsp">Go back to the reservation page</a></p>
    </div>
</body>
</html>
