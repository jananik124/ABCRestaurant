package com.restaurant.service;

import com.restaurant.model.ReservationModel;
import com.restaurant.dao.ReservationDAO;
import com.testaurant.service.ReservationService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.util.ArrayList;
import java.util.List;

public class ReservationServiceTest {

    private ReservationService reservationService;
    private ReservationDAO reservationDAOMock;

    @BeforeEach
    public void setUp() {
        // Create a mock implementation of ReservationDAO
        reservationDAOMock = new ReservationDAO() {
            private List<ReservationModel> reservations = new ArrayList<>();

            @Override
            public boolean saveReservation(ReservationModel reservation) {
                return reservations.add(reservation);
            }

            @Override
            public List<ReservationModel> getAllReservations() {
                return reservations;
            }
        };

        // Initialize ReservationService and inject the mock DAO
        reservationService = new ReservationService();
        reservationService.setReservationDAO(reservationDAOMock); // You need to add a setter method for this in ReservationService
    }

    @Test
    public void testSaveReservation() {
        ReservationModel reservation = new ReservationModel();
        reservation.setName("John Doe");
        reservation.setPhone("1234567890");
        reservation.setDate("2023-09-01");
        reservation.setTime("19:00");
        reservation.setGuests(4);
        reservation.setDiningOption("Dine-in");
        reservation.setSpecialRequests("Window seat");

        boolean isSaved = reservationService.saveReservation(reservation);
        assertTrue(isSaved, "The reservation should be saved successfully.");
    }

    @Test
    public void testGetAllReservations() {
        ReservationModel reservation1 = new ReservationModel();
        reservation1.setName("John Doe");
        reservation1.setPhone("1234567890");
        reservation1.setDate("2023-09-01");
        reservation1.setTime("19:00");
        reservation1.setGuests(4);
        reservation1.setDiningOption("Dine-in");
        reservation1.setSpecialRequests("Window seat");

        ReservationModel reservation2 = new ReservationModel();
        reservation2.setName("Jane Doe");
        reservation2.setPhone("0987654321");
        reservation2.setDate("2023-09-02");
        reservation2.setTime("20:00");
        reservation2.setGuests(2);
        reservation2.setDiningOption("Delivery");
        reservation2.setSpecialRequests("Extra napkins");

        reservationService.saveReservation(reservation1);
        reservationService.saveReservation(reservation2);

        List<ReservationModel> reservations = reservationService.getAllReservations();
        assertEquals(2, reservations.size(), "There should be two reservations in the list.");
    }
}
