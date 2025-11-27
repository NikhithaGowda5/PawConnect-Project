package com.servlet.adoption.model;

public class Adoption {
	    private int id;
	    private int petId;
	    private String fullName;
	    private String email;
	    private String phone;
	    private String address;
	    private String message;

	    public int getId() { return id; }
	    public void setId(int id) { this.id = id; }

	    public int getPetId() { return petId; }
	    public void setPetId(int petId) { this.petId = petId; }

	    public String getFullName() { return fullName; }
	    public void setFullName(String fullName) { this.fullName = fullName; }

	    public String getEmail() { return email; }
	    public void setEmail(String email) { this.email = email; }

	    public String getPhone() { return phone; }
	    public void setPhone(String phone) { this.phone = phone; }

	    public String getAddress() { return address; }
	    public void setAddress(String address) { this.address = address; }
	    
	    public String getMessage() { return message; }
	    public void setMessage(String message) { this.message = message; }
	}


