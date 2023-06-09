package com.cts.HolidayPlanner.model;

//setting details to find suggestions for a city

import javax.validation.constraints.NotBlank;

public class FormBean {
	
	@NotBlank(message="Cannot be empty")
	private String startingCity;
	@NotBlank(message="Cannot be empty")
	private String startingDate;
	@NotBlank(message="Cannot be empty")
	private String endingDate;
	@NotBlank(message="Cannot be empty")
	private String noOfDays;
	@NotBlank(message = "Cannot be empty")
	private String noOfPeople;
	
	public String getStartingCity() {
		return startingCity;
	}
	public void setStartingCity(String startingCity) {
		this.startingCity = startingCity;
	}
	
	
	public String getStartingDate() {
		return startingDate;
	}
	public void setStartingDate(String startingDate) {
		this.startingDate = startingDate;
	}
	public String getEndingDate() {
		return endingDate;
	}
	public void setEndingDate(String endingDate) {
		this.endingDate = endingDate;
	}
	public String getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(String noOfDays) {
		this.noOfDays = noOfDays;
	}
	public String getNoOfPeople() {
		return noOfPeople;
	}
	public void setNoOfPeople(String noOfPeople) {
		this.noOfPeople = noOfPeople;
	}
	
	
	
	
	
}
