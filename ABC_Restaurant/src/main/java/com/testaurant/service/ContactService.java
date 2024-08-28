package com.testaurant.service;

import com.restaurant.dao.ContactDAO;
import com.restaurant.model.ContactMODEL;
import java.util.List;

public class ContactService {

    private ContactDAO contactDAO;

    public ContactService() {
        this.contactDAO = new ContactDAO();
    }

    // This method should match the method in ContactDAO
    public List<ContactMODEL> getAllContacts() {
        return contactDAO.getAllContacts(); // Ensure this method exists in ContactDAO
    }

    public boolean saveContact(ContactMODEL contact) {
        return contactDAO.saveContact(contact); // Ensure this method exists in ContactDAO
    }
}
