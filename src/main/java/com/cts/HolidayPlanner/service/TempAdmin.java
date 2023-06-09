package com.cts.HolidayPlanner.service;

//to add data to the database. this controller is for admin to add city and location details

import java.util.Scanner;

import org.springframework.stereotype.Service;

import com.cts.HolidayPlanner.model.CityBean;
import com.cts.HolidayPlanner.model.CityDistanceBean;
import com.cts.HolidayPlanner.model.LocationBean;
import com.cts.HolidayPlanner.model.LocationDistanceBean;

@Service
public class TempAdmin {

	public CityBean addCity() {

		CityBean cb = new CityBean();
		Scanner in = new Scanner(System.in);

		System.out.println("Enter the name of the city");
		String name = in.next();
		System.out.println("Enter the href link of the city");
		String href = in.next();
		System.out.println("Enter the imgsrc of the city");
		String imgsrc = in.next();
		System.out.println("Enter the optimal number of days required to travel in the city");
		int days = in.nextInt();

		cb.setName(name);
		cb.setHref(href);
		cb.setImgsrc(imgsrc);
		cb.setDays(days);

		return cb;
	}

	public CityDistanceBean addCityDistance() {
		Scanner in = new Scanner(System.in);
		CityDistanceBean cdb = new CityDistanceBean();

		System.out.println("Enter id");
		cdb.setId(in.nextInt());
		System.out.println("Enter the from_city");
		cdb.setFrom_city(in.next());
		System.out.println("Enter the to_city");
		cdb.setTo_city(in.next());
		System.out.println("Enter the distance between the two cities");
		cdb.setDistance(in.nextInt());
		System.out.println("Enter the time taken to travel between the two cities");
		cdb.setTime(in.nextInt());

		return cdb;
	}

	public LocationBean addLocation() {
		Scanner in = new Scanner(System.in);
		LocationBean lb = new LocationBean();

		System.out.println("Enter the name of the city");
		lb.setCity(in.next());
		System.out.println("Enter the temporary name for the location");
		lb.setTemp(in.next());
		System.out.println("Enter the name of the location");
		in.nextLine();
		lb.setName(in.nextLine());
		System.out.println("Enter the href of the location");
		lb.setHref(in.next());
		System.out.println("Enter the imgsrc of the location");
		lb.setImgsrc(in.next());
		System.out.println("Enter the time to be spent in this location");
		lb.setHours(in.nextInt());
		System.out.println("Enter the day on which the location has to be visited");
		lb.setDay(in.nextInt());

		return lb;
	}

	public LocationDistanceBean addLocationDistance() {

		Scanner in = new Scanner(System.in);
		LocationDistanceBean ldb = new LocationDistanceBean();

		System.out.println("Enter the name of the city");
		ldb.setCity(in.next());
		System.out.println("Enter the from_location");
		ldb.setFrom_location(in.next());
		System.out.println("Enter the to_location");
		ldb.setTo_location(in.next());
		System.out.println("Enter the distance between the two places");
		ldb.setDistance(in.nextInt());
		System.out.println("Enter the time taken to travel between the two places");
		ldb.setTime(in.nextInt());

		return ldb;
	}

}
