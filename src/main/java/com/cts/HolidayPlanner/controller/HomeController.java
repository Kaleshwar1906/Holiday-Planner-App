package com.cts.HolidayPlanner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cts.HolidayPlanner.model.FormBean;

@Controller
public class HomeController {

	// this controller is for the basic framework for the application. You can
	// direct to every other page from here

	// direct to home.jsp (Home page)
	@GetMapping("/home")
	public String home(@ModelAttribute("form") FormBean fb) {
		return "home";
	}

	// direct to ooty.jsp
	@GetMapping("/ooty")
	public String ooty() {
		return "ooty";
	}

	// direct to manali.jsp
	@GetMapping("/manali")
	public String manali() {
		return "manali";
	}

	// direct to kannyakumari.jsp
	@GetMapping("/kannyakumari")
	public String kannyakumari() {
		return "kannyakumari";
	}

	// direct to madurai.jsp
	@GetMapping("/madurai")
	public String madurai() {
		return "madurai";
	}

	// direct to goa.jsp
	@GetMapping("/goa")
	public String goa() {
		return "goa";
	}

	// direct to allepey.jsp
	@GetMapping("/allepey")
	public String allepey(ModelMap m) {
		m.put("city", "allepey");
		return "allepey";
	}

	// direct to home-testimonial.jsp
	@GetMapping("/home-testimonial")
	public String hometestimonial() {
		return "home-testimonial";
	}

	// direct to home-contact.jsp
	@GetMapping("/home-contact")
	public String homecontact() {
		return "home-contact";
	}

	// direct to home-help.jsp
	@GetMapping("/home-help")
	public String homehelp() {
		return "home-help";
	}

}
