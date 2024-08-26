package com.restaurant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.restaurant.model.UserModel;

public class UserDao {

    public boolean registerUser(UserModel user) {
        boolean status = false;
        String query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());

            status = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public UserModel loginUser(String email, String password) {
        UserModel user = null;
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user = new UserModel();
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                // Password can be skipped for security reasons
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
