package com.restaurant.dao;

import com.restaurant.model.ContactMODEL;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContactDAO {

    private static final String contact = "contact";

    // Method to add a contact
    public void addContact(ContactMODEL contact) {
        String sql = "INSERT INTO contact (name, email, message) VALUES (?, ?, ?)";
        try (Connection connection = DBConnectionFactory.createConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, contact.getName());
            preparedStatement.setString(2, contact.getEmail());
            preparedStatement.setString(3, contact.getMessage());

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Contact added successfully!");
            } else {
                System.out.println("No rows affected.");
            }

        } catch (SQLException e) {
            System.err.println("SQL Exception occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }


    // Method to get all contacts
    public List<ContactMODEL> getAllContacts() {
        List<ContactMODEL> contacts = new ArrayList<>();
        String sql = "SELECT * FROM " + contact;

        try (Connection connection = DBConnectionFactory.createConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String message = resultSet.getString("message");

                ContactMODEL contact = new ContactMODEL(id, name, email, message);
                contacts.add(contact);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return contacts;
    }

    // Method to get a contact by ID
    public ContactMODEL getContactById(int id) {
        ContactMODEL contact = null;
        String sql = "SELECT * FROM " + contact + " WHERE id = ?";

        try (Connection connection = DBConnectionFactory.createConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setInt(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    String message = resultSet.getString("message");

                    contact = new ContactMODEL(id, name, email, message);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return contact;
    }

    // Method to update a contact
    public void updateContact(ContactMODEL contact) {
        String sql = "UPDATE " + contact + " SET name = ?, email = ?, message = ? WHERE id = ?";
        try (Connection connection = DBConnectionFactory.createConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, contact.getName());
            preparedStatement.setString(2, contact.getEmail());
            preparedStatement.setString(3, contact.getMessage());
            preparedStatement.setInt(4, contact.getId());

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Contact updated successfully!");
            } else {
                System.out.println("No rows affected.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete a contact
    public void deleteContact(int id) {
        String sql = "DELETE FROM " + contact + " WHERE id = ?";
        try (Connection connection = DBConnectionFactory.createConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setInt(1, id);
            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Contact deleted successfully!");
            } else {
                System.out.println("No rows affected.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
