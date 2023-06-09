package com.cts.HolidayPlanner.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.HolidayPlanner.model.PlanBean;

@Repository
public interface PlanDao extends JpaRepository<PlanBean, String> {

}
