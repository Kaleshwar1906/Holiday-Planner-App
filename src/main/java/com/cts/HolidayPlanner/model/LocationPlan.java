package com.cts.HolidayPlanner.model;

//storing the list of all locations from the plan

import javax.persistence.Embeddable;

@Embeddable
public class LocationPlan {
	
	private String name;
	private String startTime;
	private String endTime;
	private String city;
	private String date;
	
	
	public LocationPlan() {
		
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	public LocationPlan(String name, String startTime, String endTime, String city, String date) {
		super();
		this.name = name;
		this.startTime = startTime;
		this.endTime = endTime;
		this.city=city;
		this.date = date;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
