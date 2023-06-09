package com.cts.HolidayPlanner.controller;

import java.util.List;
import java.io.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cts.HolidayPlanner.model.CityBean;
import com.cts.HolidayPlanner.model.FormBean;
import com.cts.HolidayPlanner.service.PlanService;

//this controller serves the purpose of controlling the prerequisite paramaters for formulating the plan

@Controller
public class PrePlanController {

	@Autowired
	private PlanService ps;

	// returns the page with the city you wish to travel and also has the link to
	// the page where the plan details are
	@GetMapping("/plan")
	public String plan(HttpSession session) {
		return "plan";
	}

	// returns the suggested locations based on the number of days
	@GetMapping("/suggestions")
	public String suggestions(@ModelAttribute("form") FormBean fb, HttpSession session) {
		String s = fb.getNoOfDays();
		int i = Integer.parseInt(s);
		session.setAttribute("startCity", fb.getStartingCity());
		session.setAttribute("startDate", fb.getStartingDate());
		session.setAttribute("endDate", fb.getEndingDate());
		session.setAttribute("noOfDays", i);
		session.setAttribute("noOfPeople", fb.getNoOfPeople());
		if (i == 1)
			i = 2;
		List<CityBean> city = ps.getSuggestions(i);
		session.setAttribute("suggestions", city);
		System.out.println(city.get(0).getName());
		return "suggestions";
	}

	// this page holds the details of the plan
	@GetMapping("/planpage")
	public String planpage() {
		return "planpage";
	}

	// this page has all the available and arriving city list
	@GetMapping("/packages")
	public String packages() {
		return "packages";
	}

	// this page has the available agencies
	@GetMapping("/agency")
	public String agency() {
		return "agency";
	}

	// this page has the available transports
	@GetMapping("/transport")
	public String transport() {
		return "transport";
	}

	// this page has the available accommodations
	@GetMapping("/accomodate")
	public String accomodate() {
		return "accomodate";
	}

	// helps in returning a deleted successfully page
	@GetMapping("/deleteplan")
	public String deletePlan() {
		return "delete";
	}

	// returns error.jsp with error found if there is an error
	@GetMapping("/error")
	public String error() {
		return "error";
	}

}
