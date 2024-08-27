package com.restaurant.dao;

import com.restaurant.model.ReservationModel;
import com.restaurant.dao.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReservationDAO {

    // Method to save a reservation to the database
    public boolean saveReservation(ReservationModel reservation) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO reservations (name, phone, date, time, guests, dining_option, special_requests) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, reservation.getName());
            ps.setString(2, reservation.getPhone());
            ps.setString(3, reservation.getDate());
            ps.setString(4, reservation.getTime());
            ps.setInt(5, reservation.getGuests());
            ps.setString(6, reservation.getDiningOption());
            ps.setString(7, reservation.getSpecialRequests());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to retrieve all reservations from the database
    public List<ReservationModel> getAllReservations() {
        List<ReservationModel> reservations = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM reservations";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ReservationModel reservation = new ReservationModel();
                reservation.setName(rs.getString("name"));
                reservation.setPhone(rs.getString("phone"));
                reservation.setDate(rs.getString("date"));
                reservation.setTime(rs.getString("time"));
                reservation.setGuests(rs.getInt("guests"));
                reservation.setDiningOption(rs.getString("dining_option"));
                reservation.setSpecialRequests(rs.getString("special_requests"));
                
                reservations.add(reservation);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return reservations;
    }
}
