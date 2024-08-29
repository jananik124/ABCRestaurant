package com.restaurant.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import com.restaurant.model.ContactMODEL;
import com.restaurant.dao.ContactDAO;
import com.testaurant.service.ContactService;
import java.util.List;
import java.util.ArrayList;

public class ContactServiceTest {

    private ContactService contactService;
    private ContactDAO contactDAOMock;

    @BeforeEach
    public void setUp() {
        // Create a mock implementation of ContactDAO
        contactDAOMock = new ContactDAO() {
            private List<ContactMODEL> contacts = new ArrayList<>();

            @Override
            public List<ContactMODEL> getAllContacts() {
                return contacts;
            }

            @Override
            public boolean saveContact(ContactMODEL contact) {
                return contacts.add(contact);
            }
        };

        // Initialize ContactService and inject the mock DAO
        contactService = new ContactService();
        
        // Use reflection or setter to inject the mock DAO
        contactService.setContactDAO(contactDAOMock); // You may need to add a setter for this
    }

    @Test
    public void testSaveContact() {
        ContactMODEL contact = new ContactMODEL();
        contact.setName("John Doe");
        contact.setEmail("john.doe@example.com");
        contact.setMessage("This is a test message.");

        boolean isSaved = contactService.saveContact(contact);
        assertTrue(isSaved, "The contact should be saved successfully.");
    }

    @Test
    public void testGetAllContacts() {
        ContactMODEL contact1 = new ContactMODEL();
        contact1.setName("Aruni");
        contact1.setEmail("Aruni@gmail.com");
        contact1.setMessage("This restaurant food is very delicious");

        ContactMODEL contact2 = new ContactMODEL();
        contact2.setName("Jane Doe");
        contact2.setEmail("jane.doe@example.com");
        contact2.setMessage("Another test message.");

        contactService.saveContact(contact1);
        contactService.saveContact(contact2);

        List<ContactMODEL> contacts = contactService.getAllContacts();
        assertEquals(2, contacts.size(), "There should be two contacts saved.");
    }
}
