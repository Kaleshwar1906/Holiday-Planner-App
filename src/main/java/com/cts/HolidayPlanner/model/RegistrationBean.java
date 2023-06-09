package com.cts.HolidayPlanner.model;

//to map the registration form

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="register")
public class RegistrationBean {
	
	
	public RegistrationBean(String email, String password, String username) {
		this.email=email;
		this.password=password;
		this.username=username;
		// TODO Auto-generated constructor stub
	}
	
	public RegistrationBean() {
		
	}
	
	@Id
	@NotBlank(message = "Email column cannot be left blank")
	private String email;
	
	@Pattern(regexp ="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{5,}$", message = "Minimum of 5 characters with 1 UpperCase,LowerCase and Digit required. ")
	private String password;
	
	@Size(min = 3, message="Username should have atleast 3 characters")
	private String username;
	
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

}
