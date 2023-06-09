package com.cts.HolidayPlanner.dao;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.HolidayPlanner.model.LocationBean;
import com.cts.HolidayPlanner.model.LocationPlan;

@Repository
public interface LocationDao extends JpaRepository<LocationBean, String> {

	public ArrayList<LocationBean> findByCity(String city);

}
