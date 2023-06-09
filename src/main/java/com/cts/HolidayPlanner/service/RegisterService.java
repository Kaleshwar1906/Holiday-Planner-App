package com.cts.HolidayPlanner.service;

//to validate a registration

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.HolidayPlanner.dao.RegisterDao;
import com.cts.HolidayPlanner.model.RegistrationBean;

@Service
public class RegisterService {

	@Autowired
	private RegisterDao rd;

	public List<RegistrationBean> checkForUserName(String username) {
		return rd.existsByUserName(username);
	}

	public boolean checkForEmail(String email) {
		return rd.existsById(email);
	}

}
