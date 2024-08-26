	package com.restaurant.model;
	
	public class ReservationModel {
	    private String name;
	    private String phone;
	    private String date;
	    private String time;
	    private int guests;
	    private String specialRequests;
	
	    // Constructors
	    public ReservationModel() {}
	
	    public ReservationModel(String name, String phone, String date, String time, int guests, String specialRequests) {
	        this.name = name;
	        this.phone = phone;
	        this.date = date;
	        this.time = time;
	        this.guests = guests;
	        this.specialRequests = specialRequests;
	    }
	
	    // Getters and Setters
	    public String getName() {
	        return name;
	    }
	
	    public void setName(String name) {
	        this.name = name;
	    }
	
	    public String getPhone() {
	        return phone;
	    }
	
	    public void setPhone(String phone) {
	        this.phone = phone;
	    }
	
	    public String getDate() {
	        return date;
	    }
	
	    public void setDate(String date) {
	        this.date = date;
	    }
	
	    public String getTime() {
	        return time;
	    }
	
	    public void setTime(String time) {
	        this.time = time;
	    }
	
	    public int getGuests() {
	        return guests;
	    }
	
	    public void setGuests(int guests) {
	        this.guests = guests;
	    }
	
	    public String getSpecialRequests() {
	        return specialRequests;
	    }
	
	    public void setSpecialRequests(String specialRequests) {
	        this.specialRequests = specialRequests;
	    }
	
	    @Override
	    public String toString() {
	        return "Reservation [name=" + name + ", phone=" + phone + ", date=" + date + ", time=" + time + ", guests="
	                + guests + ", specialRequests=" + specialRequests + "]";
	    }
	}
