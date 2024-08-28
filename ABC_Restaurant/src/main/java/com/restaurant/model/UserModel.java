package com.restaurant.model;

public class UserModel {
    private String name;
    private String email;
    private String password;
    private String membershipStatus; // Add this line if it should be in the model

    // Getter and Setter methods
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMembershipStatus() { // Add this method
        return membershipStatus;
    }

    public void setMembershipStatus(String membershipStatus) { // Add this method
        this.membershipStatus = membershipStatus;
    }
}
