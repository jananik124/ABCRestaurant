package com.restaurant.controller;

import com.restaurant.model.ContactMODEL;
import com.testaurant.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/Contact", "/ContactView"})
public class ContactController extends HttpServlet {

    private ContactService contactService;

    @Override
    public void init() throws ServletException {
        super.init();
        contactService = new ContactService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Received POST request");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Message: " + message);

        if (name != null && !name.trim().isEmpty() &&
            email != null && !email.trim().isEmpty() &&
            message != null && !message.trim().isEmpty()) {

            ContactMODEL contact = new ContactMODEL();
            contact.setName(name);
            contact.setEmail(email);
            contact.setMessage(message);

            boolean isSaved = contactService.saveContact(contact);

            if (isSaved) {
                request.setAttribute("successMessage", "Thank you for contacting us! We have received your message.");
            } else {
                request.setAttribute("errorMessage", "Oops! Something went wrong. Please try again later.");
            }
        } else {
            request.setAttribute("errorMessage", "Required fields are missing or empty.");
        }

        request.getRequestDispatcher("ContactView.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ContactMODEL> contactList = contactService.getAllContacts();
        System.out.println("Contacts in controller: " + contactList.size());
        request.setAttribute("contactList", contactList);
        request.getRequestDispatcher("ContactView.jsp").forward(request, response);
    }
}
