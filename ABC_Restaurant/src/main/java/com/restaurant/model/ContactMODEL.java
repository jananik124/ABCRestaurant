package com.restaurant.model;

public class ContactMODEL {
    private int id;         // Assuming 'id' is an auto-generated field in your database
    private String name;
    private String email;
    private String message;

    // Constructor with all fields
    public ContactMODEL(int id, String name, String email, String message) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.message = message;
    }

    // Constructor without id (for insertion where id is auto-generated)
    public ContactMODEL(String name, String email, String message) {
        this.name = name;
        this.email = email;
        this.message = message;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
