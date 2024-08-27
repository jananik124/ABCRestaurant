package com.restaurant.controller;

import com.restaurant.model.UserModel;
import com.testaurant.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class UserController extends HttpServlet {

    private UserService userService;

    public void init() {
        userService = new UserService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("register".equalsIgnoreCase(action)) {
            registerUser(request, response);
        } else if ("login".equalsIgnoreCase(action)) {
            loginUser(request, response);
        }
    }

    private void registerUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserModel user = new UserModel();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);

        boolean registered = userService.registerUser(user);

        if (registered) {
            request.setAttribute("message", "Registration successful!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("UserView.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("error", "Registration failed. Try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("UserView.jsp");
            dispatcher.forward(request, response);
        }
    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserModel user = userService.loginUser(email, password);

        if (user != null) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("HomeView.jsp");
        } else {
            request.setAttribute("error", "Invalid email or password.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("UserView.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("UserView.jsp");
    }
}
