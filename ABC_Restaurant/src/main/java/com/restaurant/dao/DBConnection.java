package com.restaurant.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
    public static void main(String[] args) {
       
        String url = "jdbc:mysql://localhost:3306/abc_restaurant";
        String user = "root";
        String password = "Janani124*";

        // SQL query to execute
        String query = "SELECT * FROM product1";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            Connection connection = DriverManager.getConnection(url, user, password);

            // Create a statement
            Statement statement = connection.createStatement();

            // Execute the query
            ResultSet resultSet = statement.executeQuery(query);

            // Process the result set
            while (resultSet.next()) {
                // Example: Retrieve data by column name
                int idproduct = resultSet.getInt("id");
                String name = resultSet.getString("name");
                System.out.println("ID: " + idproduct + ", Name: " + name);
            }

            // Close resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
