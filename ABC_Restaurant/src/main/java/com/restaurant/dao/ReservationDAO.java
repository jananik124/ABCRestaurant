package com.restaurant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.restaurant.dao.DBConnection;
import com.restaurant.model.ReservationModel;

public class ReservationDAO {

    private static final String INSERT_RESERVATION_SQL = "INSERT INTO reservations (name, phone, date, time, guests, special_requests) VALUES (?, ?, ?, ?, ?, ?)";

    public boolean saveReservation(ReservationModel reservation) {
        boolean isSaved = false;

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RESERVATION_SQL)) {

            preparedStatement.setString(1, reservation.getName());
            preparedStatement.setString(2, reservation.getPhone());
            preparedStatement.setString(3, reservation.getDate());
            preparedStatement.setString(4, reservation.getTime());
            preparedStatement.setInt(5, reservation.getGuests());
            preparedStatement.setString(6, reservation.getSpecialRequests());

            int result = preparedStatement.executeUpdate();
            if (result > 0) {
                isSaved = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isSaved;
    }
}
