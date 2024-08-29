package com.restaurant.controller;

import com.restaurant.model.ContactMODEL;
import com.testaurant.service.ContactService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

public class ContactControllerTest {

    private ContactController contactController;
    private ContactService contactServiceMock;
    private HttpServletRequest requestMock;
    private HttpServletResponse responseMock;
    private RequestDispatcher requestDispatcherMock;

    @BeforeEach
    public void setUp() {
        contactServiceMock = mock(ContactService.class);
        contactController = new ContactController(contactServiceMock); // Constructor with dependency injection
        requestMock = mock(HttpServletRequest.class);
        responseMock = mock(HttpServletResponse.class);
        requestDispatcherMock = mock(RequestDispatcher.class);
    }

    @Test
    public void testDoPost_SuccessfulContactSave() throws ServletException, IOException {
        when(requestMock.getParameter("name")).thenReturn("John Doe");
        when(requestMock.getParameter("email")).thenReturn("john.doe@example.com");
        when(requestMock.getParameter("message")).thenReturn("Hello, this is a test message.");
        when(contactServiceMock.saveContact(any(ContactMODEL.class))).thenReturn(true);
        when(requestMock.getRequestDispatcher("ContactView.jsp")).thenReturn(requestDispatcherMock);

        contactController.doPost(requestMock, responseMock);

        verify(requestMock).setAttribute("successMessage", "Thank you for contacting us! We have received your message.");
        verify(requestDispatcherMock).forward(requestMock, responseMock);
    }

    @Test
    public void testDoPost_FailedContactSave() throws ServletException, IOException {
        when(requestMock.getParameter("name")).thenReturn("John Doe");
        when(requestMock.getParameter("email")).thenReturn("john.doe@example.com");
        when(requestMock.getParameter("message")).thenReturn("Hello, this is a test message.");
        when(contactServiceMock.saveContact(any(ContactMODEL.class))).thenReturn(false);
        when(requestMock.getRequestDispatcher("ContactView.jsp")).thenReturn(requestDispatcherMock);

        contactController.doPost(requestMock, responseMock);

        verify(requestMock).setAttribute("errorMessage", "Oops! Something went wrong. Please try again later.");
        verify(requestDispatcherMock).forward(requestMock, responseMock);
    }

    @Test
    public void testDoPost_MissingFields() throws ServletException, IOException {
        when(requestMock.getParameter("name")).thenReturn("");
        when(requestMock.getParameter("email")).thenReturn("");
        when(requestMock.getParameter("message")).thenReturn("");
        when(requestMock.getRequestDispatcher("ContactView.jsp")).thenReturn(requestDispatcherMock);

        contactController.doPost(requestMock, responseMock);

        verify(requestMock).setAttribute("errorMessage", "Required fields are missing or empty.");
        verify(requestDispatcherMock).forward(requestMock, responseMock);
    }

    @Test
    public void testDoGet() throws ServletException, IOException {
        List<ContactMODEL> contactList = new ArrayList<>();
        contactList.add(new ContactMODEL());

        when(contactServiceMock.getAllContacts()).thenReturn(contactList);
        when(requestMock.getRequestDispatcher("ContactView.jsp")).thenReturn(requestDispatcherMock);

        contactController.doGet(requestMock, responseMock);

        verify(requestMock).setAttribute("contactList", contactList);
        verify(requestDispatcherMock).forward(requestMock, responseMock);
    }
}
