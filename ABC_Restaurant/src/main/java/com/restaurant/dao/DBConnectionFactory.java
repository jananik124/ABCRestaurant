package com.restaurant.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionFactory {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/abc_restaurant";
    private static final String USER = "root";
    private static final String PASSWORD = "Janani124*";

    // Private constructor to prevent instantiation
    private DBConnectionFactory() {
    }

    public static Connection createConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            connection.setAutoCommit(true); // Ensure auto-commit is enabled
            System.out.println("Connection created successfully!");
        } catch (ClassNotFoundException e) {
            System.err.println("JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Connection creation failed.");
            e.printStackTrace();
        }
        return connection;
    }
    
    public static void main(String[] args) {
        // Test the connection
        Connection connection = createConnection();
        
        // Always close the connection when done
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Connection closed.");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
