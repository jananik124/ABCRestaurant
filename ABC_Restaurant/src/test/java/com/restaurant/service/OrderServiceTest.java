package com.restaurant.service;

import com.restaurant.model.OrderModel;
import com.restaurant.dao.OrderDao;
import com.testaurant.service.OrderService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class OrderServiceTest {

    private OrderService orderService;
    private OrderDao orderDaoMock;

    @BeforeEach
    public void setUp() {
        // Create a mock implementation of OrderDao
        orderDaoMock = new OrderDao() {
            private List<OrderModel> orders = new ArrayList<>();

            @Override
            public boolean saveOrder(OrderModel order) {
                return orders.add(order);
            }

            @Override
            public List<OrderModel> getAllOrders() {
                return orders;
            }

            @Override
            public List<OrderModel> searchOrders(String query) {
                List<OrderModel> result = new ArrayList<>();
                for (OrderModel order : orders) {
                    if (order.getItemName().contains(query) || 
                        order.getCustomerName().contains(query) || 
                        order.getEmail().contains(query)) {
                        result.add(order);
                    }
                }
                return result;
            }
        };

        // Initialize OrderService and inject the mock DAO
        orderService = new OrderService();
        orderService.setOrderDao(orderDaoMock); // You need to add a setter method for this in OrderService
    }

    @Test
    public void testCreateOrder() {
        OrderModel order = new OrderModel();
        order.setItemName("Pizza");
        order.setTotalAmount(new BigDecimal("25.00"));
        order.setCustomerName("John Doe");
        order.setEmail("john.doe@example.com");
        order.setPhone("1234567890");
        order.setAddress("123 Main St");
        order.setPaymentMethod("Credit Card");

        boolean isCreated = orderService.createOrder(order);
        assertTrue(isCreated, "The order should be created successfully.");
    }

    @Test
    public void testGetAllOrders() {
        OrderModel order1 = new OrderModel();
        order1.setItemName("Pizza");
        order1.setTotalAmount(new BigDecimal("25.00"));
        order1.setCustomerName("John Doe");
        order1.setEmail("john.doe@example.com");

        OrderModel order2 = new OrderModel();
        order2.setItemName("Burger");
        order2.setTotalAmount(new BigDecimal("15.00"));
        order2.setCustomerName("Jane Doe");
        order2.setEmail("jane.doe@example.com");

        orderService.createOrder(order1);
        orderService.createOrder(order2);

        List<OrderModel> orders = orderService.getAllOrders();
        assertEquals(2, orders.size(), "There should be two orders in the list.");
    }

    @Test
    public void testSearchOrders() {
        OrderModel order1 = new OrderModel();
        order1.setItemName("Pizza");
        order1.setTotalAmount(new BigDecimal("25.00"));
        order1.setCustomerName("John Doe");
        order1.setEmail("john.doe@example.com");

        OrderModel order2 = new OrderModel();
        order2.setItemName("Burger");
        order2.setTotalAmount(new BigDecimal("15.00"));
        order2.setCustomerName("Jane Doe");
        order2.setEmail("jane.doe@example.com");

        orderService.createOrder(order1);
        orderService.createOrder(order2);

        List<OrderModel> searchResults = orderService.searchOrders("Pizza");
        assertEquals(1, searchResults.size(), "There should be one order matching the search query.");
        assertEquals("Pizza", searchResults.get(0).getItemName(), "The item name should match the search query.");
    }

    @Test
    public void testCreateOrderWithNullFields() {
        OrderModel order = new OrderModel();
        order.setItemName(null); // Null item name
        order.setTotalAmount(new BigDecimal("0.00"));
        order.setCustomerName("Test User");
        order.setEmail("test.user@example.com");
        order.setPhone("9876543210");
        order.setAddress("Unknown");
        order.setPaymentMethod("Cash");

        boolean isCreated = orderService.createOrder(order);
        assertTrue(isCreated, "The order should be created successfully even with null item name.");
    }

    @Test
    public void testSearchOrdersWithNoMatches() {
        OrderModel order1 = new OrderModel();
        order1.setItemName("Pizza");
        order1.setTotalAmount(new BigDecimal("25.00"));
        order1.setCustomerName("John Doe");
        order1.setEmail("john.doe@example.com");

        OrderModel order2 = new OrderModel();
        order2.setItemName("Burger");
        order2.setTotalAmount(new BigDecimal("15.00"));
        order2.setCustomerName("Jane Doe");
        order2.setEmail("jane.doe@example.com");

        orderService.createOrder(order1);
        orderService.createOrder(order2);

        List<OrderModel> searchResults = orderService.searchOrders("Pasta");
        assertEquals(0, searchResults.size(), "There should be no orders matching the search query 'Pasta'.");
    }

    @Test
    public void testGetAllOrdersWhenNoOrdersExist() {
        List<OrderModel> orders = orderService.getAllOrders();
        assertEquals(0, orders.size(), "The list should be empty when there are no orders.");
    }
}
