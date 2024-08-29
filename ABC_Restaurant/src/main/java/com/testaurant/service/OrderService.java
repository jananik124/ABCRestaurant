package com.testaurant.service;

import com.restaurant.dao.OrderDao;
import com.restaurant.model.OrderModel;

import java.util.List;

public class OrderService {

    private OrderDao orderDao;

    public OrderService() {
        orderDao = new OrderDao();
    }

    public boolean createOrder(OrderModel order) {
        return orderDao.saveOrder(order);
    }

    public List<OrderModel> getAllOrders() {
        return orderDao.getAllOrders();
    }
    public List<OrderModel> searchOrders(String query) {
        return orderDao.searchOrders(query);
    }
    
    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

}
