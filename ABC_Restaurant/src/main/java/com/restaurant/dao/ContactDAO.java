package com.restaurant.dao;

import com.restaurant.model.ContactMODEL;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.restaurant.dao.DBConnection; // Ensure this is correctly imported

public class ContactDAO {
    private Connection connection;

    public ContactDAO() {
        connection = DBConnection.getConnection(); // Ensure this method returns a valid connection
    }

    public boolean saveContact(ContactMODEL contact) {
        String query = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, contact.getName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getMessage());
            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception for debugging
        }
        return false;
    }

    public List<ContactMODEL> getAllContacts() {
        List<ContactMODEL> contactList = new ArrayList<>();
        String query = "SELECT * FROM contact_messages";
        try (Statement stmt = connection.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                ContactMODEL contact = new ContactMODEL();
                contact.setName(rs.getString("name"));
                contact.setEmail(rs.getString("email"));
                contact.setMessage(rs.getString("message"));
                contactList.add(contact);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception for debugging
        }
        return contactList;
    }
}
