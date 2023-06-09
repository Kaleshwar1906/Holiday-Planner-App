package com.cts.HolidayPlanner.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.HolidayPlanner.model.CityBean;

@Repository
public interface CityDao extends JpaRepository<CityBean, String> {

	public List<CityBean> findByDaysLessThanEqual(int days);

}
