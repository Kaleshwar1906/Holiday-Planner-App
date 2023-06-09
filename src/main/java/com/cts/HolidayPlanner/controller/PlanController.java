package com.cts.HolidayPlanner.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.cts.HolidayPlanner.model.CityDistanceBean;
import com.cts.HolidayPlanner.model.EditLocationBean;
import com.cts.HolidayPlanner.model.EditPlanBean;
import com.cts.HolidayPlanner.model.LocationPlan;
import com.cts.HolidayPlanner.model.PlanBean;
import com.cts.HolidayPlanner.service.PlanService;

@Controller
public class PlanController {

	@Autowired
	private PlanService ps;

	// finding the location and the city off the " Add Location " button and then
	// adding the selected location to list

	@GetMapping("/plan/{city}/{location}")
	public String cityplan(@PathVariable("city") String city, @PathVariable("location") String location,
			HttpSession session) {
		session.setAttribute("cityName", city.toUpperCase());
		session.setAttribute("citySearch", city);
		LocationPlan lp = new LocationPlan(location, "00:00 AM", "00:00 AM", city, "00/00/0000");

		boolean b = ps.checkCityName(city);
		if (b) {
			ps.addLocation(lp);
		} else {
			ps.deleteList();
			ps.addLocation(lp);
		}

		ArrayList<LocationPlan> list = ps.getList();
		session.setAttribute("list", list);

		System.out.println("Location list  " + list.get(0).getEndTime());
		return "dummy";
	}

	// delete the location which was on the plan from the list
	@GetMapping("/delete/{name}")
	public String delete(@PathVariable("name") String name, HttpSession session) {
		ps.deleteLocation(name);
		session.setAttribute("list", ps.getList());
		System.out.println(name);
		return "delete";

	}

	// opens a form to edit the location which was on the plan from the list (Start
	// time, end time and date)
	@GetMapping("/edit/{name}")
	public String edit(@PathVariable("name") String name, HttpSession session,
			@ModelAttribute("editlocdata") EditLocationBean edb) {
		session.setAttribute("temp", name);
		return "editlocation";

	}

	// edits the location which was on the plan from the list (Start time, end time
	// and date) and returns edited successfully from edit.jsp
	@GetMapping("/editloc")
	public String edit(@ModelAttribute("editlocdata") EditLocationBean edb, HttpSession session) {
		System.out.println(session.getAttribute("temp"));
		String s = (String) session.getAttribute("temp");
		ps.editLocation(s, edb.getStartTime(), edb.getEndTime(), edb.getDate());
		session.setAttribute("list", ps.getList());
		return "edit";

	}

	// opens a form to edit the plan like changing dates, noOfPeople,
	// noOfDays,startingCity
	@GetMapping("/edittheplan")
	public String editplan(@ModelAttribute("editplandata") EditPlanBean edb, HttpSession session) {

		return "editplan";
	}

	// after editing the plan, the values are stored in session and "successful"
	// from edit.jsp is returned
	@GetMapping("/editedtheplan")
	public String planeditted(@ModelAttribute("editplandata") EditPlanBean edb, HttpSession session) {

		session.setAttribute("startCity", edb.getStartCity());
		session.setAttribute("startDate", edb.getStartDate());
		session.setAttribute("endDate", edb.getEndDate());
		session.setAttribute("noOfDays", edb.getNoOfDays());
		session.setAttribute("noOfPeople", edb.getNoOfPeople());
		return "edit";
	}

	// generate plan for the city based on the number of days and returns "Generated
	// Successfully" from generate.jsp
	@GetMapping("/generateplan/{city}")
	public String generateplan(@PathVariable("city") String city, HttpSession session) {
		session.setAttribute("cityName", city.toUpperCase());
		int day = (int) session.getAttribute("noOfDays");

		ps.generateList(city, day);

		ArrayList<LocationPlan> list = ps.getList();

		session.setAttribute("list", list);
		return "generate";
	}

	// calculates the budget and also stores the plan in the database
	@GetMapping("/save")
	public String save(HttpSession session) {
		String start = (String) session.getAttribute("startCity");
		List<CityDistanceBean> list = ps.getDistanceList(start); // get distance list of cities with start city we have
																	// selected
		String end = (String) session.getAttribute("cityName");
		System.out.println(end);
		end = end.toLowerCase(); // get end city name
		int days = (int) session.getAttribute("noOfDays");
		// get no of days
		int people = (int) session.getAttribute("noOfPeople");

		String agency = (String) session.getAttribute("agency");
		String accomodate = (String) session.getAttribute("accomodate");
		String transport = (String) session.getAttribute("transport");
		int distance = 0, travel_cost = 0, accomodate_cost = 0, extra_expense = 0;

		for (CityDistanceBean i : list) {
			if (i.getTo_city().equals(end)) // finding distance between two cities
			{
				distance = i.getDistance();
			}
		}

		if (agency.equals("None")) {
			extra_expense = 100 * days;
			if (transport.equals("Flight"))
				travel_cost = 4;
			if (transport.equals("Car"))
				travel_cost = 3;
			if (transport.equals("Bus"))
				travel_cost = 2;
			if (transport.equals("Train"))
				travel_cost = 1; // calculating budget
		} else {
			extra_expense = 150 * days;
			if (agency.equals("Agency A"))
				travel_cost = 3;
			if (agency.equals("Agency B"))
				travel_cost = 2;
			if (agency.equals("Agency C"))
				travel_cost = 1;
		}

		if (accomodate.equals("Hotel Luxury"))
			accomodate_cost = 2000;
		if (accomodate.equals("Hotel Affordable"))
			accomodate_cost = 1000;
		if (accomodate.equals("Hotel Budget"))
			accomodate_cost = 500;

		int cost = (distance * travel_cost * 2) + (accomodate_cost * days) + extra_expense;
		cost = cost * people;
		session.setAttribute("budget", cost);

		// saving the plan in the database;
		String email = (String) session.getAttribute("user");
		String startDate = (String) session.getAttribute("startDate");
		String endDate = (String) session.getAttribute("endDate");
		List<LocationPlan> l = ps.getList();
		PlanBean pb = new PlanBean(email, start, end, startDate, endDate, days, people, agency, accomodate, transport,
				cost, l);
		ps.savePlan(pb);

		return "planpage";
	}

	// delete the plan and also from database
	@GetMapping("/delete")
	public String delete(HttpSession session) {

		String email = (String) session.getAttribute("user");

		session.setAttribute("cityName", "NOWHERE");
		session.setAttribute("startCity", "SOMEWHERE");
		session.setAttribute("startDate", "Empty");
		session.setAttribute("endDate", "Empty");
		session.setAttribute("noOfDays", 0);
		session.setAttribute("noOfPeople", 0);
		session.setAttribute("agency", "None");
		session.setAttribute("accomodate", "None");
		session.setAttribute("transport", "None	");

		ps.deleteLocationFromList();
		session.removeAttribute("list");
		session.setAttribute("budget", 0);
		List<LocationPlan> l = ps.getList();
		PlanBean pb = new PlanBean(email, "SOMEWHERE", "NOWHERE", "Empty", "Empty", 0, 0, "None", "None", "None", 0, l);
		ps.savePlan(pb);
		return "plan";

	}

	// gets the mode of travel
	@GetMapping("/plan/{transport}/travel")
	public String transportplan(@PathVariable("transport") String transport, HttpSession session) {

		session.setAttribute("transport", transport);
		return "dummy";
	}

	// gets the agency that you are travelling with
	@GetMapping("/plan/{agency}/agency")
	public String agencyplan(@PathVariable("agency") String agency, HttpSession session) {

		session.setAttribute("agency", agency);
		return "dummy";
	}

	// gets the name of hotel that you plan to stay in
	@GetMapping("/plan/{accomodate}/hotel")
	public String accomodateplan(@PathVariable("accomodate") String accomodate, HttpSession session) {

		session.setAttribute("accomodate", accomodate);
		return "dummy";
	}

}
