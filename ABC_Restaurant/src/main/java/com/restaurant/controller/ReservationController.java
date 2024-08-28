package com.restaurant.controller;

import com.restaurant.model.ReservationModel;
import com.testaurant.service.ReservationService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Reservation")
public class ReservationController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ReservationService reservationService;

    public ReservationController() {
        this.reservationService = new ReservationService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        int guests = Integer.parseInt(request.getParameter("guests"));
        String diningOption = request.getParameter("dining_option");
        String specialRequests = request.getParameter("special_requests");

        ReservationModel reservation = new ReservationModel(name, phone, date, time, guests, diningOption, specialRequests);
        boolean isSaved = reservationService.saveReservation(reservation);

        if (isSaved) {
            List<ReservationModel> reservationList = reservationService.getAllReservations(); // Get all reservations from the database
            request.setAttribute("reservationList", reservationList); // Set the list of reservations as a request attribute
            request.setAttribute("message", "Reservation Confirmed!");
            request.setAttribute("status", "success");
        } else {
            request.setAttribute("message", "Something went wrong. Please try again later.");
            request.setAttribute("status", "error");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("ReservationView.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
