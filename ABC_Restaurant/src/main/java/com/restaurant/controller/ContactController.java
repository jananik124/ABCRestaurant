package com.restaurant.controller;

import com.restaurant.dao.ContactDAO;
import com.restaurant.model.ContactMODEL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Contact")
public class ContactController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ContactDAO contactDAO;

    @Override
    public void init() throws ServletException {
        contactDAO = new ContactDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //List<ContactMODEL> contacts = contactDAO.getAllContacts();
        //request.setAttribute("contacts", contacts); // Changed "Contacts.jsp" to "contacts"
        request.getRequestDispatcher("Contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        //Debug: Print form data
        System.out.println("Received contact form submission:");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Message: " + message);

        ContactMODEL contact = new ContactMODEL(name, email, message);
       // contactDAO.addContact(contact);

        // You can use redirect if you don't need to forward any data, otherwise use forward
        response.sendRedirect("Contact.jsp"); 
        request.getRequestDispatcher("Contact.jsp").forward(request, response);
    }
}
