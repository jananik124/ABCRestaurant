package com.testaurant.service;

import com.restaurant.dao.ReservationDAO;
import com.restaurant.model.ReservationModel;
import java.util.List;

public class ReservationService {

    private ReservationDAO reservationDAO;

    // Constructor to initialize ReservationDAO
    public ReservationService() {
        this.reservationDAO = new ReservationDAO();
    }

    // Method to save a reservation using ReservationDAO
    public boolean saveReservation(ReservationModel reservation) {
        return reservationDAO.saveReservation(reservation);
    }

    // Method to retrieve all reservations using ReservationDAO
    public List<ReservationModel> getAllReservations() {
        return reservationDAO.getAllReservations();
    }
    
    public void setReservationDAO(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

}
