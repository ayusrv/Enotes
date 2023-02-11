package com.User;

public class UserDetails {
	private int id;
	private String name;
	private String email;
	private String password;
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserDetails(String name, String email, String password, int id) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
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
	public String getPassword() {
		return password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
