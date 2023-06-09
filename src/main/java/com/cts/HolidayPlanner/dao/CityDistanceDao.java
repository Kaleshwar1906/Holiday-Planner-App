package com.cts.HolidayPlanner.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cts.HolidayPlanner.model.CityDistanceBean;

@Repository
public interface CityDistanceDao extends JpaRepository<CityDistanceBean, Integer> {

	@Query("select cd from CityDistanceBean cd where cd.from_city = ?1")
	public List<CityDistanceBean> findByFrom_city(String from_city);

}
