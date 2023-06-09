package com.cts.HolidayPlanner.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.HolidayPlanner.model.LocationDistanceBean;

@Repository
public interface LocationDistanceDao extends JpaRepository<LocationDistanceBean, Integer> {

}
