package com.testaurant.service;

import com.restaurant.dao.ContactDAO;
import com.restaurant.model.ContactMODEL;
import java.util.List;

public class ContactService {
    private ContactDAO contactDAO;

    public ContactService() {
        contactDAO = new ContactDAO();
    }

    public boolean saveContact(ContactMODEL contact) {
        return contactDAO.saveContact(contact);
    }

    public List<ContactMODEL> listAllContacts() {
        return contactDAO.getAllContacts(); // Ensure this method returns the list correctly
    }
}
