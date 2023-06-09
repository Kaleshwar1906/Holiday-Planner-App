package com.cts.HolidayPlanner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.cts.HolidayPlanner.dao.CityDao;
import com.cts.HolidayPlanner.dao.CityDistanceDao;
import com.cts.HolidayPlanner.dao.LocationDao;
import com.cts.HolidayPlanner.dao.LocationDistanceDao;
import com.cts.HolidayPlanner.model.CityBean;
import com.cts.HolidayPlanner.model.CityDistanceBean;
import com.cts.HolidayPlanner.model.LocationBean;
import com.cts.HolidayPlanner.model.LocationDistanceBean;
import com.cts.HolidayPlanner.service.TempAdmin;

@Controller
public class AdminController {

	@Autowired
	private TempAdmin temp;

	@Autowired
	private CityDao cd;
	@Autowired
	private CityDistanceDao cdd;
	@Autowired
	private LocationDao ld;
	@Autowired
	private LocationDistanceDao ldd;

	// takes you to the page where the admin can select the table where he is going
	// to add data
	@GetMapping("/adminpath")
	public String adminpath() {
		return "adminpath";
	}

	// control on adminpath.jsp to add city
	@GetMapping("/add_city")
	public String addcity() {
		CityBean cb;
		cb = temp.addCity();
		cd.save(cb);
		return "admin";
	}

	// control on adminpath.jsp to add distance between cities
	@GetMapping("/add_city_distance")
	public String addcitydistance() {
		CityDistanceBean cdb;
		cdb = temp.addCityDistance();
		cdd.save(cdb);
		return "admin";
	}

	// control on adminpath.jsp to add a location for the city
	@GetMapping("/add_location")
	public String addlocation() {
		LocationBean lb;
		lb = temp.addLocation();
		ld.save(lb);
		return "admin";
	}

	// control on adminpath.jsp to add distance between locations for a city
	@GetMapping("/add_location_distance")
	public String admin3() {
		LocationDistanceBean ldb;
		ldb = temp.addLocationDistance();
		ldd.save(ldb);
		return "admin";
	}

}
