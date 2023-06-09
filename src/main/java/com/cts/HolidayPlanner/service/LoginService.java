package com.cts.HolidayPlanner.service;

//to login a user

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.HolidayPlanner.dao.RegisterDao;
import com.cts.HolidayPlanner.model.RegistrationBean;

@Service
public class LoginService {

	@Autowired
	private RegisterDao rd;

	public boolean validateUser(String email, String password) {
		// TODO Auto-generated method stub
		String s = "";
		if (rd.existsById(email)) {
			Optional<RegistrationBean> bean = rd.findById(email);
			s = bean.get().getPassword();
		}
		if (s.equals(password))
			return true;
		else
			return false;
	}

}
