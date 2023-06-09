package com.cts.HolidayPlanner.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.HolidayPlanner.dao.RegisterDao;
import com.cts.HolidayPlanner.model.RegistrationBean;
import com.cts.HolidayPlanner.model.FormBean;
import com.cts.HolidayPlanner.model.LocationPlan;
import com.cts.HolidayPlanner.model.LoginBean;
import com.cts.HolidayPlanner.model.PlanBean;
import com.cts.HolidayPlanner.service.HomeService;
import com.cts.HolidayPlanner.service.LoginService;
import com.cts.HolidayPlanner.service.PlanService;
import com.cts.HolidayPlanner.service.RegisterService;

//this controller is for controlling login and register request of the user

@Controller
public class UserController {

	@Autowired
	private RegisterService rs;

	@Autowired
	private LoginService ls;

	@Autowired
	private HomeService hs;

	@Autowired
	private PlanService ps;

	@GetMapping("/")
	public String initial_page() {
		return "main";
	}

	@RequestMapping(value = "/mainpage", method = RequestMethod.POST)
	public String main(@Valid @ModelAttribute("registerdata") RegistrationBean reg, BindingResult br, ModelMap m) {
		String page;
		if (br.hasErrors()) {
			page = "register";
		} else {
			List<RegistrationBean> rb = rs.checkForUserName(reg.getUsername());
			boolean a = rs.checkForEmail(reg.getEmail());
			if (a) {
				m.put("error1", "User with same email id exists");
				page = "register";
			} else {
				if (!rb.isEmpty()) {
					page = "register";
					m.put("error2", "Username already exists");
				} else {
					page = "main";
					hs.saveUser(reg);
				}
			}
		}
		return page;
	}

	@GetMapping("/main")
	public String reload_main(HttpSession session) {

		session.invalidate();
		return "main";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute("logindata") LoginBean user) {
		return "login";
	}

	@GetMapping("/register")
	public String register(@ModelAttribute("registerdata") RegistrationBean reg) {
		return "register";
	}

	@PostMapping("/home")
	public String home(@Valid @ModelAttribute("logindata") LoginBean user, BindingResult br, ModelMap m,
			@ModelAttribute("form") FormBean fb, HttpSession session) {

		String page = "";
		boolean c = br.hasErrors();
		if (c) {
			page = "login";
		} else {
			boolean a = ls.validateUser(user.getEmail(), user.getPassword());
			if (!a) {
				m.put("error", "Invalid Username or password");
				page = "login";
			} else
				page = "home";
		}

		session.setAttribute("user", user.getEmail());

		boolean b = hs.userexists(user.getEmail());
		System.out.println("User exists " + b);
		boolean a = ps.getList().isEmpty();

		if (b) {
			PlanBean pb = hs.retrieveData(user.getEmail());
			System.out.println("From databbase " + pb.getCityName());
			session.setAttribute("cityName", pb.getCityName().toUpperCase());
			session.setAttribute("startCity", pb.getStartCity());
			session.setAttribute("startDate", pb.getStartDate());
			session.setAttribute("endDate", pb.getEndDate());
			session.setAttribute("noOfDays", pb.getNoOfDays());
			session.setAttribute("noOfPeople", pb.getNoOfPeople());
			session.setAttribute("agency", pb.getAgency());
			session.setAttribute("accomodate", pb.getAccomodate());
			session.setAttribute("transport", pb.getTransport());
			session.setAttribute("budget", pb.getBudget());
			if (!a) {
				List<LocationPlan> l = pb.getList();
				for (int i = 0; i < l.size(); i++) {
					System.out.println(l.get(i).getName());
				}
				session.setAttribute("list", l);
			}
		} else {
			session.setAttribute("cityName", "NOWHERE");
			session.setAttribute("startCity", "SOMEWHERE");
			session.setAttribute("startDate", "Empty");
			session.setAttribute("endDate", "Empty");
			session.setAttribute("noOfDays", 0);
			session.setAttribute("noOfPeople", 0);
			session.setAttribute("agency", "None");
			session.setAttribute("accomodate", "None");
			session.setAttribute("transport", "None");
			session.setAttribute("budget", 0);
		}

		return page;
	}

	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}

	@GetMapping("/testimonial")
	public String testimonial() {
		return "testimonial";
	}

	@GetMapping("/help")
	public String help() {
		return "help";
	}

}
