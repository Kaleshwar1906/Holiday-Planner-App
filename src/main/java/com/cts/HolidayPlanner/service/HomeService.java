package com.cts.HolidayPlanner.service;

//to register a user

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.HolidayPlanner.model.PlanBean;
import com.cts.HolidayPlanner.dao.PlanDao;
import com.cts.HolidayPlanner.dao.RegisterDao;
import com.cts.HolidayPlanner.model.RegistrationBean;

@Service
public class HomeService {

	@Autowired
	private PlanDao pd;

	@Autowired
	RegisterDao rd;

	// check if the user has already registered
	public boolean userexists(String email) {
		if (pd.existsById(email))
			return true;

		return false;
	}

	// to save a new user
	public void saveUser(@Valid RegistrationBean reg) {
		// TODO Auto-generated method stub
		rd.save(reg);
	}

	// to retrieve the object of user which has his email
	public PlanBean retrieveData(String email) {
		Optional<PlanBean> optional = pd.findById(email);
		return optional.get();
	}

}
