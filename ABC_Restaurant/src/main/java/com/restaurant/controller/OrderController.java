package com.restaurant.controller;

import com.restaurant.model.OrderModel;
import com.testaurant.service.OrderService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {

    private OrderService orderService;

    @Override
    public void init() throws ServletException {
        super.init();
        orderService = new OrderService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String itemName = request.getParameter("itemName");
        String totalAmountStr = request.getParameter("totalAmount");
        String customerName = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String paymentMethod = request.getParameter("paymentMethod");

        BigDecimal totalAmount;
        try {
            totalAmount = new BigDecimal(totalAmountStr);
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid total amount format.");
            request.getRequestDispatcher("Checkout.jsp").forward(request, response);
            return;
        }

        OrderModel order = new OrderModel();
        order.setItemName(itemName);
        order.setTotalAmount(totalAmount);
        order.setCustomerName(customerName);
        order.setEmail(email);
        order.setPhone(phone);
        order.setAddress(address);
        order.setPaymentMethod(paymentMethod);

        boolean isSaved = orderService.createOrder(order);
        if (isSaved) {
            request.setAttribute("successMessage", "Your order has been placed successfully!");
        } else {
            request.setAttribute("errorMessage", "Oops! Something went wrong. Please try again later.");
        }

        request.getRequestDispatcher("Checkout.jsp").forward(request, response);
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<OrderModel> orderList = orderService.getAllOrders();
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("OrderView.jsp").forward(request, response);
    }
}
