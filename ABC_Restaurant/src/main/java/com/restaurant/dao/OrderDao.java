package com.restaurant.dao;

import com.restaurant.model.OrderModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {

    private Connection connection;

    public OrderDao() {
        connection = DBConnection.getConnection(); // Ensure DBConnection is properly implemented
    }

    public boolean saveOrder(OrderModel order) {
        String sql = "INSERT INTO orders (item_name, total_amount, customer_name, email, phone, address, payment_method) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, order.getItemName());
            statement.setBigDecimal(2, order.getTotalAmount());
            statement.setString(3, order.getCustomerName());
            statement.setString(4, order.getEmail());
            statement.setString(5, order.getPhone());
            statement.setString(6, order.getAddress());
            statement.setString(7, order.getPaymentMethod());

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<OrderModel> getAllOrders() {
        List<OrderModel> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                OrderModel order = new OrderModel();
                order.setId(resultSet.getInt("id"));
                order.setItemName(resultSet.getString("item_name"));
                order.setTotalAmount(resultSet.getBigDecimal("total_amount"));
                order.setCustomerName(resultSet.getString("customer_name"));
                order.setEmail(resultSet.getString("email"));
                order.setPhone(resultSet.getString("phone"));
                order.setAddress(resultSet.getString("address"));
                order.setPaymentMethod(resultSet.getString("payment_method"));

                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
    
    public List<OrderModel> searchOrders(String query) {
        List<OrderModel> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders WHERE item_name LIKE ? OR customer_name LIKE ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            String searchQuery = "%" + query + "%";
            statement.setString(1, searchQuery);
            statement.setString(2, searchQuery);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    OrderModel order = new OrderModel();
                    order.setId(resultSet.getInt("id"));
                    order.setItemName(resultSet.getString("item_name"));
                    order.setTotalAmount(resultSet.getBigDecimal("total_amount"));
                    order.setCustomerName(resultSet.getString("customer_name"));
                    order.setEmail(resultSet.getString("email"));
                    order.setPhone(resultSet.getString("phone"));
                    order.setAddress(resultSet.getString("address"));
                    order.setPaymentMethod(resultSet.getString("payment_method"));
                    orders.add(order);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
}
