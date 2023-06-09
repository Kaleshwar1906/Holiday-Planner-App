package com.cts.HolidayPlanner.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.cts.HolidayPlanner.model.RegistrationBean;

@Repository
public interface RegisterDao extends JpaRepository<RegistrationBean, String> {

	@Query("select ud from RegistrationBean ud where ud.username=?1")
	public List<RegistrationBean> existsByUserName(String username);

}
