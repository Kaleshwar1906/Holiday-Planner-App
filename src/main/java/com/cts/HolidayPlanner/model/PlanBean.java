package com.cts.HolidayPlanner.model;

//stores details of the plan and LocationPlan bean is the embedded bean to stores the list of locations

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "plan") 
public class PlanBean {
	
	@Id
	private String email;
	private String startCity;
	private String cityName;
	private String startDate;
	private String endDate;
	private int noOfDays;
	private int noOfPeople;
	private String agency;
	private String accomodate;
	public List<LocationPlan> getList() {
		return list;
	}

	public void setList(List<LocationPlan> list) {
		this.list = list;
	}
	private String transport;
	private int budget;
	
	@ElementCollection
	@CollectionTable(name="plan_location")
	private List<LocationPlan> list;
	
	
	public PlanBean(String email, String startCity, String cityName, String startDate, String endDate, int noOfDays,
			int noOfPeople, String agency, String accomodate, String transport, int budget, List<LocationPlan> list) {
		super();
		this.email = email;
		this.startCity = startCity;
		this.cityName = cityName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.noOfDays = noOfDays;
		this.noOfPeople = noOfPeople;
		this.agency = agency;
		this.accomodate = accomodate;
		this.transport = transport;
		this.budget = budget;
		this.list=list;
	}
	
	public PlanBean() {
		
	}
	

	public String getStartCity() {
		return startCity;
	}
	public void setStartCity(String startCity) {
		this.startCity = startCity;
	}
	public int getNoOfPeople() {
		return noOfPeople;
	}
	public void setNoOfPeople(int noOfPeople) {
		this.noOfPeople = noOfPeople;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public int getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}
	public String getAccomodate() {
		return accomodate;
	}
	public void setAccomodate(String accomodate) {
		this.accomodate = accomodate;
	}


}
