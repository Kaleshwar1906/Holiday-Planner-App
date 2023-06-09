package com.cts.HolidayPlanner.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.HolidayPlanner.dao.CityDao;
import com.cts.HolidayPlanner.dao.CityDistanceDao;
import com.cts.HolidayPlanner.dao.LocationDao;
import com.cts.HolidayPlanner.dao.PlanDao;
import com.cts.HolidayPlanner.model.CityBean;
import com.cts.HolidayPlanner.model.CityDistanceBean;
import com.cts.HolidayPlanner.model.LocationBean;
import com.cts.HolidayPlanner.model.LocationPlan;
import com.cts.HolidayPlanner.model.PlanBean;

//to prepare the plan

@Service
public class PlanService {

	@Autowired
	private CityDao cd;

	@Autowired
	private CityDistanceDao cdd;

	@Autowired
	private LocationDao ld;

	@Autowired
	private PlanDao pd;

	ArrayList<LocationPlan> list = new ArrayList<LocationPlan>();

	// to add a location to the list
	public void addLocation(LocationPlan lp) {
		int i = 0;
		int n = list.size();
		int flag = 0;
		int c = 0;

		if (n == 0) {
			list.add(lp);
			System.out.println("Added first list");
		} else {
			for (i = 0; i < n; i++) {
				if (list.get(i).getName().equals(lp.getName())) {
					flag = 1;
				}
			}
			if (flag == 0)
				list.add(lp);
			else
				System.out.println("location exists");
		}

		System.out.println(list.size() + "  size after location addition");

	}

	// to check if the city already exists, so that a plan can be created
	public boolean checkCityName(String city) {

		int n = list.size();

		if (n > 0) {
			if (list.get(0).getCity().equals(city)) {
				System.out.println("city exists");
				return true;
			} else
				return false;
		} else
			return false;

	}

//to delete the list
	public void deleteList() {
		list.removeAll(list);
		System.out.println(list.size() + "   deleteList");
		System.out.println("Deleted all");
	}

	// to return the list
	public ArrayList<LocationPlan> getList() {

		return list;
	}

	// to delete a value in the list(deleting a location from the user)
	public void deleteLocation(String name) {

		int i;
		for (i = 0; i < list.size(); i++) {
			if (list.get(i).getName().equals(name)) {
				list.remove(i);
				System.out.println("Deleted Successfully");
			}
		}

	}

	// to edit details of the location
	public void editLocation(String temp, String startTime, String endTime, String date) {
		int i;
		for (i = 0; i < list.size(); i++) {
			if (list.get(i).getName().equals(temp)) {
				list.get(i).setStartTime(startTime);
				list.get(i).setEndTime(endTime);
				list.get(i).setDate(date);
				System.out.println("Changed Successfully");
			}
		}

	}

	// to get suggestions of the cities
	public List<CityBean> getSuggestions(int i) {

		return cd.findByDaysLessThanEqual(i);
	}

//to return distance between two cities
	public List<CityDistanceBean> getDistanceList(String s) {

		return cdd.findByFrom_city(s);
	}

	// to generate a list based on the city and number of days
	public void generateList(String city, int day) {
		int i;
		System.out.println(list.size());
		list.removeAll(list);
		System.out.println(list.size());
		ArrayList<LocationBean> l = ld.findByCity(city);

		if (day > 0) {
			for (i = 0; i < l.size(); i++) {
				if (l.get(i).getDay() <= day) {
					LocationPlan lp = new LocationPlan(l.get(i).getName(), "00:00 AM", "00:00 AM", city, "00/00/0000");
					list.add(lp);
				}
			}
		} else {
			for (i = 0; i < l.size(); i++) {
				LocationPlan lp = new LocationPlan(l.get(i).getName(), "00:00 AM", "00:00 AM", city, "00/00/0000");
				list.add(lp);
			}

		}

	}

	// to save the plan to the database
	public void savePlan(PlanBean pb) {

		pd.save(pb);

	}

	// to delete the list itself
	public void deleteLocationFromList() {
		// TODO Auto-generated method stub
		list.removeAll(list);
	}

}
