package com.cts.HolidayPlanner.model;

//gets the login details

import javax.validation.constraints.NotBlank;

public class LoginBean {

	@NotBlank(message = "Email column cannot be empty.")
	private String email;
	
	@NotBlank(message = "Please enter the password.")
	private String password;

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

}
