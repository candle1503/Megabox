package com.mega.s1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class BookingTimeController {

	@Autowired
	private BookingTimeService bookingTimeService;
	
	@GetMapping("/booking/bookingTimeZone")
	public void bookingTimeList(long startDay, Model model) throws Exception{
		
		List<String> timeList = bookingTimeService.bookingTimeList(startDay);
		
		model.addAttribute("timeList", timeList);
		
	}
	
}
