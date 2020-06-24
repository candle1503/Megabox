package com.mega.s1.booking;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class BookingTimeService {

	public List<String> bookingTimeList(long startDay) throws Exception{
		
		int year = 0;
		int month = 0;
		int day = 0;
		int count = 0;
		
		List<String> timeList = new ArrayList<>();
		
		Calendar cal = Calendar.getInstance();
		
		SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
		SimpleDateFormat sdfMonth = new SimpleDateFormat("mm");
		SimpleDateFormat sdfDay = new SimpleDateFormat("dd");
		SimpleDateFormat sdfYoil = new SimpleDateFormat("ee");

		Date date = new Date();
		
		return timeList;
	}
	
}
