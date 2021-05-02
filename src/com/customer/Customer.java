package com.customer;

public class Customer {
	
 private int custID;
 private String name;
 private String username;
 private String email;
 private String password;
 
 public Customer(int custID, String name, String username,String email,String password) {
		super();
		this.custID = custID;
		this.name = name;
		this.username = username;
		this.email=email;
		this.password = password;
	}

public int getCustID() {
	return custID;
}

public String getName() {
	return name;
}

public String getUsername() {
	return username;
}

public String getEmail() {
	return email;
}

	

public String getPassword() {
	return password;
}
 
 
}
