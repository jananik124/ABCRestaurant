package com.testaurant.service;

import com.restaurant.dao.ContactDAO;
import com.restaurant.model.ContactMODEL;
import java.util.List;

public class ContactService {

    private ContactDAO contactDAO;

    public ContactService() {
        this.contactDAO = new ContactDAO();
    }

    // Setter method for testing
    public void setContactDAO(ContactDAO contactDAO) {
        this.contactDAO = contactDAO;
    }

    public List<ContactMODEL> getAllContacts() {
        return contactDAO.getAllContacts();
    }

    public boolean saveContact(ContactMODEL contact) {
        return contactDAO.saveContact(contact);
    }
}

    
    

