package model;

public class User {
	
	protected int id;
	protected String accountNumber;
	protected String name;
	protected String phoneNumber;
	protected String district;
	
	public User() {
		
	}
	
	public User(int id,String accountNumber,String name, String phoneNumber, String district) {
	
		this.id = id;
		this.accountNumber=accountNumber;
		this.name = name;
		this.phoneNumber=phoneNumber;
		this.district = district;
	}
	
	public User(String accountNumber,String name, String phoneNumber, String district) {
	
		this.name = name;
		this.accountNumber = accountNumber;
		this.phoneNumber=phoneNumber;
		this.district = district;
	}

	public int getId() {
		return id;
	}

	public String getAccountNum() {
		return accountNumber;
	}

	public String getName() {
		return name;
	}
	
	public String getAccountNumber() {
		return accountNumber;
	}


	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}

	public String getDistrict() {
		return district;
	}

	


	

}
